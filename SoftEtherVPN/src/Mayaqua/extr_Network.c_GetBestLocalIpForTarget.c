
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int GatewayIP; scalar_t__ LocalRouting; } ;
typedef TYPE_1__ ROUTE_ENTRY ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* GetBestRouteEntry (int *) ;
 int GetLocalHostIP4 (int *) ;
 int IsIP4 (int *) ;
 scalar_t__ IsLocalHostIP4 (int *) ;
 scalar_t__ IsZeroIp (int *) ;
 int Zero (int *,int) ;
 int ZeroIP4 (int *) ;

bool GetBestLocalIpForTarget(IP *local_ip, IP *target_ip)
{
 bool ret = 0;
 ROUTE_ENTRY *e;
 IP ip2;
 UINT n = 0;
 IP zero_ip;

 Zero(local_ip, sizeof(IP));
 ZeroIP4(&zero_ip);
 if (target_ip == ((void*)0))
 {
  target_ip = &zero_ip;
 }
 if (local_ip == ((void*)0) || IsIP4(target_ip) == 0)
 {
  return 0;
 }

 Copy(&ip2, target_ip, sizeof(IP));

 while (1)
 {
  n++;
  if (n >= 64)
  {
   break;
  }

  e = GetBestRouteEntry(&ip2);
  if (e != ((void*)0))
  {
   if (IsZeroIp(&e->GatewayIP))
   {
    Free(e);
    break;
   }

   if (e->LocalRouting)
   {
    ret = 1;
    Copy(local_ip, &e->GatewayIP, sizeof(IP));
    Free(e);
    break;
   }
   else
   {
    Copy(&ip2, &e->GatewayIP, sizeof(IP));
   }

   Free(e);
  }
 }

 if (ret == 0)
 {
  if (IsLocalHostIP4(target_ip))
  {
   GetLocalHostIP4(local_ip);
   ret = 1;
  }
 }

 return ret;
}
