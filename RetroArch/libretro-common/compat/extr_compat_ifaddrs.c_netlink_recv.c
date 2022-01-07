
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int dummy; } ;
struct msghdr {int msg_namelen; int msg_iovlen; int msg_flags; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; void* msg_name; } ;
struct iovec {void* member_0; size_t member_1; } ;
typedef int l_addr ;


 scalar_t__ EINTR ;
 int MSG_TRUNC ;
 scalar_t__ errno ;
 int recvmsg (int,struct msghdr*,int ) ;

__attribute__((used)) static int netlink_recv(int p_socket, void *p_buffer, size_t p_len)
{
   struct msghdr l_msg;
   struct iovec l_iov = { p_buffer, p_len };
   struct sockaddr_nl l_addr;

   for(;;)
   {
      l_msg.msg_name = (void *)&l_addr;
      l_msg.msg_namelen = sizeof(l_addr);
      l_msg.msg_iov = &l_iov;
      l_msg.msg_iovlen = 1;
      l_msg.msg_control = ((void*)0);
      l_msg.msg_controllen = 0;
      l_msg.msg_flags = 0;
      int l_result = recvmsg(p_socket, &l_msg, 0);

      if(l_result < 0)
      {
         if(errno == EINTR)
            continue;
         return -2;
      }

      if(l_msg.msg_flags & MSG_TRUNC)
         return -1;
      return l_result;
   }
}
