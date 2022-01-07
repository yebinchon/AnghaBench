
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


 int ZeroIP6 (TYPE_1__*) ;

void InAddrToIP6(IP *ip, struct in6_addr *addr)
{
 UINT i;

 if (ip == ((void*)0) || addr == ((void*)0))
 {
  return;
 }

 ZeroIP6(ip);
 for (i = 0;i < 16;i++)
 {
  ip->ipv6_addr[i] = ((UCHAR *)addr)[i];
 }
}
