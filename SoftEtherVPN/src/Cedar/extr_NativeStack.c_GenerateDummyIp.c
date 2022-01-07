
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int* addr; } ;
typedef int PRAND ;
typedef TYPE_1__ IP ;


 int PRandInt (int *) ;
 int Zero (TYPE_1__*,int) ;

void GenerateDummyIp(PRAND *p, IP *ip)
{
 UINT i;
 if (p == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));

 for (i = 1;i < 4;i++)
 {
  UINT v = 0;
  while (1)
  {
   v = PRandInt(p) % 256;
   if (v >= 1 && v <= 254)
   {
    break;
   }
  }

  ip->addr[i] = (UCHAR)v;
 }

 ip->addr[0] = 127;
}
