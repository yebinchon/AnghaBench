
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {struct ifaddrs* ifa_next; } ;


 int free (struct ifaddrs*) ;

void freeifaddrs(struct ifaddrs *ifa)
{
   struct ifaddrs *l_cur = ((void*)0);

   while(ifa)
   {
      l_cur = ifa;
      ifa = ifa->ifa_next;
      free(l_cur);
   }
}
