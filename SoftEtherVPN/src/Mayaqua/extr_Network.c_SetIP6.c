
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int* addr; int * ipv6_addr; } ;
typedef TYPE_1__ IP ;


 int Zero (TYPE_1__*,int) ;

void SetIP6(IP *ip, UCHAR *value)
{

 if (ip == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));

 ip->addr[0] = 223;
 ip->addr[1] = 255;
 ip->addr[2] = 255;
 ip->addr[3] = 254;

 if (value != ((void*)0))
 {
  UINT i;

  for (i = 0;i < 16;i++)
  {
   ip->ipv6_addr[i] = value[i];
  }
 }
}
