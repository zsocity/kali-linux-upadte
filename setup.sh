#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Kali wallpapers
echo "Installing Kali wallpapers..."
sudo apt-get install -y kali-wallpapers-2019.4 kali-wallpapers-2020.4 kali-wallpapers-2021.4 kali-wallpapers-2022 kali-wallpapers-2023 kali-wallpapers-legacy

# Install Git
echo "Installing Git..."
sudo apt-get install -y git

# Install curl
echo "Installing curl..."
sudo apt-get install -y curl

# Install wget
echo "Installing wget..."
sudo apt-get install -y wget

# Install build-essential (C/C++ compiler and IDE)
echo "Installing build-essential (C/C++ compiler and IDE)..."
sudo apt-get install -y build-essential

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Install Vim or Nano
echo "Installing Vim..."
sudo apt-get install -y vim

# Install GIMP
echo "Installing GIMP..."
sudo apt-get install -y gimp

# Install Postman
echo "Installing Postman..."
sudo snap install postman

# Install Wine (32-bit and 64-bit)
echo "Installing Wine..."
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install -y wine wine32 wine64

# Install zipalign
echo "Installing zipalign..."
sudo apt-get install -y zipalign

# Install Node.js and npm
echo "Installing Node.js and npm..."
sudo apt-get install -y nodejs npm

# Install JDK 8
echo "Installing JDK 8..."
sudo apt-get install -y openjdk-8-jdk

# Install ngrok
echo "Installing ngrok..."
NGROK_VERSION="3.3.0" # Adjust this to the latest version if necessary
wget https://bin.equinox.io/c/4b3QshJ0I7m/ngrok-v${NGROK_VERSION}-linux-amd64.zip
unzip ngrok-v${NGROK_VERSION}-linux-amd64.zip
sudo mv ngrok /usr/local/bin/

# Install Nessus
echo "Installing Nessus..."
wget https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/10.0.0/view
sudo dpkg -i Nessus-10.0.0-debian6_amd64.deb
sudo systemctl start nessusd
sudo systemctl enable nessusd

# Install MinGW
echo "Installing MinGW..."
sudo apt-get install -y mingw-w64

# Clean up
echo "Cleaning up..."
sudo apt-get clean

echo "All tools have been installed successfully."
