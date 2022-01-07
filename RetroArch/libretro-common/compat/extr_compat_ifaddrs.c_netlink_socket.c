
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int nl_family; } ;
struct sockaddr {int dummy; } ;
typedef int l_addr ;


 int AF_NETLINK ;
 int NETLINK_ROUTE ;
 int PF_NETLINK ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int memset (struct sockaddr_nl*,int ,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int netlink_socket(void)
{
   struct sockaddr_nl l_addr;
   int l_socket = socket(PF_NETLINK, SOCK_RAW, NETLINK_ROUTE);

   if(l_socket < 0)
      return -1;

   memset(&l_addr, 0, sizeof(l_addr));
   l_addr.nl_family = AF_NETLINK;
   if(bind(l_socket, (struct sockaddr *)&l_addr, sizeof(l_addr)) < 0)
   {
      close(l_socket);
      return -1;
   }

   return l_socket;
}
