
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int dummy; } ;


 struct ifaddrs* getWiiUInterfaceAddressData () ;

int getifaddrs(struct ifaddrs **ifap)
{
   if (!ifap)
      return -1;
   *ifap = getWiiUInterfaceAddressData();

   return (*ifap == ((void*)0)) ? -1 : 0;
}
