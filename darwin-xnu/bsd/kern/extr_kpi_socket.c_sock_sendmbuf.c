
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {scalar_t__ msg_iovlen; int * msg_iov; } ;
typedef int socket_t ;
typedef int * mbuf_t ;
typedef int errno_t ;


 int EINVAL ;
 int m_freem (int *) ;
 int sock_send_internal (int ,struct msghdr const*,int *,int,size_t*) ;

errno_t
sock_sendmbuf(socket_t sock, const struct msghdr *msg, mbuf_t data,
    int flags, size_t *sentlen)
{
 if (data == ((void*)0) || (msg != ((void*)0) && (msg->msg_iov != ((void*)0) ||
     msg->msg_iovlen != 0))) {
  if (data != ((void*)0))
   m_freem(data);
  return (EINVAL);
 }
 return (sock_send_internal(sock, msg, data, flags, sentlen));
}
