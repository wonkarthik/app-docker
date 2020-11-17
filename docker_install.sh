#!/bin/bash
echo "Installing Docker packages ... "
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io -y
echo "Enabling docker Service ..."
systemctl enable docker.service
systemctl start docker.service
systemctl status docker.service

echo "Installing Docker-compose ..."
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o docker-compose
mv docker-compose /usr/local/bin && sudo chmod +x /usr/local/bin/docker-compose



