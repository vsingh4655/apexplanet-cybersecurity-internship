# Allow SSH (Port 22) and HTTP (Port 80)
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Block incoming FTP (Port 21)
sudo iptables -A INPUT -p tcp --dport 21 -j DROP

# Drop stealth scan attempts
sudo iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
sudo iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP
