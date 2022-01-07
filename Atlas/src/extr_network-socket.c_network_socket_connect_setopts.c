
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int val ;
typedef int network_socket_retval_t ;
struct TYPE_7__ {TYPE_4__* src; int fd; } ;
typedef TYPE_2__ network_socket ;
struct TYPE_6__ {int common; } ;
struct TYPE_8__ {int len; TYPE_1__ addr; } ;


 int G_STRLOC ;
 int IPPROTO_IP ;
 int IPPROTO_TCP ;
 int IP_TOS ;
 int NETWORK_SOCKET_SUCCESS ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int TCP_NODELAY ;
 int errno ;
 int g_debug (char*,int ,...) ;
 int g_strerror (int ) ;
 int getsockname (int ,int *,int *) ;
 scalar_t__ network_address_refresh_name (TYPE_4__*) ;
 int network_address_reset (TYPE_4__*) ;
 int setsockopt (int ,int ,int ,int*,int) ;

network_socket_retval_t network_socket_connect_setopts(network_socket *sock) {



 int val = 1;
 val = 1;
 setsockopt(sock->fd, IPPROTO_TCP, TCP_NODELAY, &val, sizeof(val) );
 val = 1;
 setsockopt(sock->fd, SOL_SOCKET, SO_KEEPALIVE, &val, sizeof(val) );


 if (-1 == getsockname(sock->fd, &sock->src->addr.common, &(sock->src->len))) {
  g_debug("%s: getsockname() failed: %s (%d)",
    G_STRLOC,
    g_strerror(errno),
    errno);
  network_address_reset(sock->src);
 } else if (network_address_refresh_name(sock->src)) {
  g_debug("%s: network_address_refresh_name() failed",
    G_STRLOC);
  network_address_reset(sock->src);
 }

 return NETWORK_SOCKET_SUCCESS;
}
