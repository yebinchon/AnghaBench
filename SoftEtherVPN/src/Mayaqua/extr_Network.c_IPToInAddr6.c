
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * ipv6_addr; } ;
typedef TYPE_1__ IP ;


 scalar_t__ IsIP6 (TYPE_1__*) ;
 int Zero (struct in6_addr*,int) ;

void IPToInAddr6(struct in6_addr *addr, IP *ip)
{
 UINT i;

 if (addr == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 Zero(addr, sizeof(struct in6_addr));

 if (IsIP6(ip))
 {
  for (i = 0;i < 16;i++)
  {
   ((UCHAR *)addr)[i] = ip->ipv6_addr[i];
  }
 }
}
