
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_iovlen; int * msg_iov; } ;
typedef int socket_t ;
typedef int mbuf_t ;
typedef int errno_t ;


 int EINVAL ;
 int sock_receive_internal (int ,struct msghdr*,int *,int,size_t*) ;

errno_t
sock_receivembuf(socket_t sock, struct msghdr *msg, mbuf_t *data, int flags,
    size_t *recvlen)
{
 if (data == ((void*)0) || recvlen == 0 || *recvlen <= 0 || (msg != ((void*)0) &&
     (msg->msg_iov != ((void*)0) || msg->msg_iovlen != 0)))
  return (EINVAL);

 return (sock_receive_internal(sock, msg, data, flags, recvlen));
}
