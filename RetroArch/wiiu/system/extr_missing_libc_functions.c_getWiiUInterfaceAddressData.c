
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct ifaddrs {scalar_t__ ifa_netmask; scalar_t__ ifa_addr; scalar_t__ ifa_dstaddr; } ;


 struct ifaddrs* buildEmptyIfa () ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getAssignedAddress (struct sockaddr_in*) ;
 scalar_t__ getAssignedSubnet (struct sockaddr_in*) ;
 scalar_t__ getBroadcastAddress (struct sockaddr_in*,struct sockaddr_in*,struct sockaddr_in*) ;

__attribute__((used)) static struct ifaddrs *getWiiUInterfaceAddressData(void)
{
   struct ifaddrs *result = buildEmptyIfa();

   if (result)
   {
      if (getAssignedAddress((struct sockaddr_in *)result->ifa_addr) < 0 ||
            getAssignedSubnet((struct sockaddr_in *)result->ifa_netmask) < 0 ||
            getBroadcastAddress((struct sockaddr_in *)result->ifa_dstaddr,
               (struct sockaddr_in *)result->ifa_addr,
               (struct sockaddr_in *)result->ifa_netmask) < 0) {
         goto error;
      }
   }

   return result;

error:
   freeifaddrs(result);
   return ((void*)0);
}
