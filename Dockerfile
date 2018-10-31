FROM ceph/daemon
MAINTAINER wang chong <w420050757@gmail.com>

RUN mkdir -p /run/rpcbind /export /var/run/dbus \
 && touch /run/rpcbind/rpcbind.xdr /run/rpcbind/portmap.xdr \
 && chmod 755 /run/rpcbind/* \
 && chown messagebus:messagebus /var/run/dbus

COPY start_mon.sh /start_mon.sh

