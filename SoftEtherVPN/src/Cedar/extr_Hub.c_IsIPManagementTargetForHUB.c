
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Option; } ;
struct TYPE_4__ {scalar_t__ ManageOnlyLocalUnicastIPv6; scalar_t__ ManageOnlyPrivateIP; } ;
typedef int IP ;
typedef TYPE_2__ HUB ;


 int GetIPAddrType6 (int *) ;
 int IPV6_ADDR_LOCAL_UNICAST ;
 scalar_t__ IsIP4 (int *) ;
 int IsIPPrivate (int *) ;

bool IsIPManagementTargetForHUB(IP *ip, HUB *hub)
{

 if (ip == ((void*)0) || hub == ((void*)0))
 {
  return 0;
 }

 if (hub->Option == ((void*)0))
 {
  return 1;
 }

 if (IsIP4(ip))
 {
  if (hub->Option->ManageOnlyPrivateIP)
  {
   if (IsIPPrivate(ip) == 0)
   {
    return 0;
   }
  }
 }
 else
 {
  if (hub->Option->ManageOnlyLocalUnicastIPv6)
  {
   UINT ip_type = GetIPAddrType6(ip);

   if (!(ip_type & IPV6_ADDR_LOCAL_UNICAST))
   {
    return 0;
   }
  }
 }

 return 1;
}
