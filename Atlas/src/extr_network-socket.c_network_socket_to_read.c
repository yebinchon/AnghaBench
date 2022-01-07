
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_socklen_t ;
typedef int network_socket_retval_t ;
struct TYPE_3__ {scalar_t__ socket_type; int to_read; int fd; } ;
typedef TYPE_1__ network_socket ;
typedef int b ;


 int FIONREAD ;
 int G_STRLOC ;
 int NETWORK_SOCKET_ERROR ;
 int NETWORK_SOCKET_SUCCESS ;
 scalar_t__ SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_NREAD ;
 int errno ;
 int g_critical (char*,int ,int ,int,...) ;
 int g_strerror (int ) ;
 scalar_t__ getsockopt (int ,int ,int ,int*,int*) ;
 scalar_t__ ioctl (int ,int ,int*) ;

network_socket_retval_t network_socket_to_read(network_socket *sock) {
 int b = -1;
 if (0 != ioctl(sock->fd, FIONREAD, &b)) {
  g_critical("%s: ioctl(%d, FIONREAD, ...) failed: %s (%d)",
    G_STRLOC,
    sock->fd,
    g_strerror(errno), errno);
  return NETWORK_SOCKET_ERROR;
 } else if (b < 0) {
  g_critical("%s: ioctl(%d, FIONREAD, ...) succeeded, but is negative: %d",
    G_STRLOC,
    sock->fd,
    b);

  return NETWORK_SOCKET_ERROR;
 } else {
  sock->to_read = b;
  return NETWORK_SOCKET_SUCCESS;
 }

}
