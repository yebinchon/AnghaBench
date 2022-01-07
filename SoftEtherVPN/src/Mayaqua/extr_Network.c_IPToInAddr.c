
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * addr; } ;
typedef TYPE_1__ IP ;


 int IsIP6 (TYPE_1__*) ;
 int Zero (struct in_addr*,int) ;

void IPToInAddr(struct in_addr *addr, IP *ip)
{
 UINT i;

 if (addr == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 Zero(addr, sizeof(struct in_addr));

 if (IsIP6(ip) == 0)
 {
  for (i = 0;i < 4;i++)
  {
   ((UCHAR *)addr)[i] = ip->addr[i];
  }
 }
}
