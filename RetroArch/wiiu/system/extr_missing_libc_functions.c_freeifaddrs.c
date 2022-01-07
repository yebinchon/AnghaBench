
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {struct ifaddrs* ifa_dstaddr; struct ifaddrs* ifa_netmask; struct ifaddrs* ifa_addr; struct ifaddrs* ifa_name; } ;


 int free (struct ifaddrs*) ;

void freeifaddrs(struct ifaddrs *ifp)
{
   if (ifp)
   {
      if (ifp->ifa_name)
      {
         free(ifp->ifa_name);
         ifp->ifa_name = ((void*)0);
      }

      if (ifp->ifa_addr)
      {
         free(ifp->ifa_addr);
         ifp->ifa_addr = ((void*)0);
      }

      if (ifp->ifa_netmask)
      {
         free(ifp->ifa_netmask);
         ifp->ifa_netmask = ((void*)0);
      }

      if (ifp->ifa_dstaddr)
      {
         free(ifp->ifa_dstaddr);
         ifp->ifa_dstaddr = ((void*)0);
      }
      free(ifp);
   }
}
