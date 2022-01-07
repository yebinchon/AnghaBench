
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int dummy; } ;
typedef int NetlinkList ;


 int RTM_GETADDR ;
 int RTM_GETLINK ;
 int close (int) ;
 int freeResultList (int *) ;
 int * getResultList (int,int ) ;
 int interpretAddrs (int,int *,struct ifaddrs**,int) ;
 int interpretLinks (int,int *,struct ifaddrs**) ;
 int netlink_socket () ;

int getifaddrs(struct ifaddrs **ifap)
{
   int l_socket = 0;
   int l_result = 0;
   if(!ifap)
      return -1;
   *ifap = ((void*)0);

   l_socket = netlink_socket();
   if(l_socket < 0)
      return -1;

   NetlinkList *l_linkResults = getResultList(l_socket, RTM_GETLINK);
   if(!l_linkResults)
   {
      close(l_socket);
      return -1;
   }

   NetlinkList *l_addrResults = getResultList(l_socket, RTM_GETADDR);
   if(!l_addrResults)
   {
      close(l_socket);
      freeResultList(l_linkResults);
      return -1;
   }

   int l_numLinks = interpretLinks(l_socket, l_linkResults, ifap);

   if(l_numLinks == -1 || interpretAddrs(l_socket, l_addrResults, ifap, l_numLinks) == -1)
      l_result = -1;

   freeResultList(l_linkResults);
   freeResultList(l_addrResults);
   close(l_socket);
   return l_result;
}
