
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int* ipv6_addr; } ;
typedef TYPE_1__ IP ;


 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 int ZeroIP6 (TYPE_1__*) ;

void IntToSubnetMask6(IP *ip, UINT i)
{
 UINT j = i / 8;
 UINT k = i % 8;
 UINT z;
 IP a;

 ZeroIP6(&a);

 for (z = 0;z < 16;z++)
 {
  if (z < j)
  {
   a.ipv6_addr[z] = 0xff;
  }
  else if (z == j)
  {
   a.ipv6_addr[z] = ~(0xff >> k);
  }
 }

 Copy(ip, &a, sizeof(IP));
}
