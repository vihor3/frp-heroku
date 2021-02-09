#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_addr = 0.0.0.0
bind_port = 7123
dashboard_port = 6990
token = mzVbJcTZ9lF2K5sL
dashboard_user = admin
dashboard_pwd = adminc61da77e
vhost_http_port = 80
vhost_https_port = 443
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
