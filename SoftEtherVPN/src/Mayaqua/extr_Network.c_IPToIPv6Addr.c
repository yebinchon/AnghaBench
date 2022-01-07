
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int * ipv6_addr; } ;
struct TYPE_7__ {int * Value; } ;
typedef TYPE_1__ IPV6_ADDR ;
typedef TYPE_2__ IP ;


 int IsIP6 (TYPE_2__*) ;
 int Zero (TYPE_1__*,int) ;

bool IPToIPv6Addr(IPV6_ADDR *addr, IP *ip)
{
 UINT i;

 if (addr == ((void*)0) || ip == ((void*)0))
 {
  Zero(addr, sizeof(IPV6_ADDR));
  return 0;
 }

 if (IsIP6(ip) == 0)
 {
  Zero(addr, sizeof(IPV6_ADDR));
  return 0;
 }

 for (i = 0;i < 16;i++)
 {
  addr->Value[i] = ip->ipv6_addr[i];
 }

 return 1;
}
