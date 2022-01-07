
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


 int Zero (TYPE_1__*,int) ;

void InAddrToIP(IP *ip, struct in_addr *addr)
{
 UINT i;

 if (ip == ((void*)0) || addr == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));

 for (i = 0;i < 4;i++)
 {
  ip->addr[i] = ((UCHAR *)addr)[i];
 }
}
