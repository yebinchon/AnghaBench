
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; int * msg_iov; } ;
typedef int socket_t ;
typedef int errno_t ;


 int EINVAL ;
 int sock_send_internal (int ,struct msghdr const*,int *,int,size_t*) ;

errno_t
sock_send(socket_t sock, const struct msghdr *msg, int flags, size_t *sentlen)
{
 if (msg == ((void*)0) || msg->msg_iov == ((void*)0) || msg->msg_iovlen < 1)
  return (EINVAL);

 return (sock_send_internal(sock, msg, ((void*)0), flags, sentlen));
}
