
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;
typedef int IP ;


 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 int GetIPAddrType6 (int *) ;
 int IPV6_ADDR_GLOBAL_UNICAST ;
 int IPV6_ADDR_LOCAL_UNICAST ;
 int IntToSubnetMask6 (int *,int) ;
 int IsIP6 (int *) ;
 scalar_t__ IsInSameNetwork6 (int *,int *,int *) ;
 int IsLocalHostIP6 (int *) ;
 int IsZeroIp (int *) ;
 int * LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;

bool IsIPv6LocalNetworkAddress(IP *ip)
{
 UINT type;
 LIST *o;
 UINT i;
 bool ret = 0;
 IP mask64;

 if (ip == ((void*)0))
 {
  return 0;
 }
 if (IsIP6(ip) == 0)
 {
  return 0;
 }
 if (IsZeroIp(ip))
 {
  return 0;
 }

 type = GetIPAddrType6(ip);

 if (type & IPV6_ADDR_LOCAL_UNICAST)
 {
  return 1;
 }

 if ((type & IPV6_ADDR_GLOBAL_UNICAST) == 0)
 {
  return 0;
 }

 IntToSubnetMask6(&mask64, 64);

 o = GetHostIPAddressList();

 ret = 0;

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IP *p = LIST_DATA(o, i);

  if (IsIP6(p))
  {
   if (IsZeroIp(p) == 0)
   {
    if (IsLocalHostIP6(p) == 0)
    {
     if (IsInSameNetwork6(p, ip, &mask64))
     {
      ret = 1;
     }
    }
   }
  }
 }

 FreeHostIPAddressList(o);

 return ret;
}
