
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int network_socklen_t ;
typedef int network_socket_retval_t ;
struct TYPE_12__ {scalar_t__ to_read; scalar_t__ socket_type; TYPE_3__* recv_queue_raw; TYPE_2__* dst; int fd; } ;
typedef TYPE_4__ network_socket ;
typedef int gssize ;
struct TYPE_13__ {int len; int str; } ;
struct TYPE_11__ {int len; scalar_t__ offset; int chunks; } ;
struct TYPE_9__ {int common; } ;
struct TYPE_10__ {int len; TYPE_1__ addr; } ;
typedef TYPE_5__ GString ;






 int G_STRLOC ;
 int NETWORK_SOCKET_ERROR ;
 int NETWORK_SOCKET_SUCCESS ;
 int NETWORK_SOCKET_WAIT_FOR_EVENT ;
 scalar_t__ SOCK_STREAM ;
 int WSAGetLastError () ;
 int errno ;
 int g_debug (char*,int ,int ,int) ;
 int g_queue_push_tail (int ,TYPE_5__*) ;
 int g_strerror (int) ;
 TYPE_5__* g_string_sized_new (scalar_t__) ;
 int recv (int ,int ,scalar_t__,int ) ;
 int recvfrom (int ,int ,scalar_t__,int ,int *,int*) ;

network_socket_retval_t network_socket_read(network_socket *sock) {
 gssize len;

 if (sock->to_read > 0) {
  GString *packet = g_string_sized_new(sock->to_read);

  g_queue_push_tail(sock->recv_queue_raw->chunks, packet);

  if (sock->socket_type == SOCK_STREAM) {
   len = recv(sock->fd, packet->str, sock->to_read, 0);
  } else {

   network_socklen_t dst_len = sizeof(sock->dst->addr.common);
   len = recvfrom(sock->fd, packet->str, sock->to_read, 0, &(sock->dst->addr.common), &(dst_len));
   sock->dst->len = dst_len;
  }
  if (-1 == len) {



   switch (errno) {
   case 130:
   case 129:
   case 128:
   case 131:
    return NETWORK_SOCKET_WAIT_FOR_EVENT;
   default:
    g_debug("%s: recv() failed: %s (errno=%d)", G_STRLOC, g_strerror(errno), errno);
    return NETWORK_SOCKET_ERROR;
   }
  } else if (len == 0) {





   return NETWORK_SOCKET_WAIT_FOR_EVENT;
  }

  sock->to_read -= len;
  sock->recv_queue_raw->len += len;



  packet->len = len;
 }

 return NETWORK_SOCKET_SUCCESS;
}
