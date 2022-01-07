
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int msg_iovlen; TYPE_1__* msg_iov; } ;
typedef int socket_t ;
typedef int errno_t ;
struct TYPE_2__ {scalar_t__ iov_len; int * iov_base; } ;


 int EINVAL ;
 int sock_receive_internal (int ,struct msghdr*,int *,int,size_t*) ;

errno_t
sock_receive(socket_t sock, struct msghdr *msg, int flags, size_t *recvdlen)
{
 if ((msg == ((void*)0)) || (msg->msg_iovlen < 1) ||
     (msg->msg_iov[0].iov_len == 0) ||
     (msg->msg_iov[0].iov_base == ((void*)0)))
  return (EINVAL);

 return (sock_receive_internal(sock, msg, ((void*)0), flags, recvdlen));
}
