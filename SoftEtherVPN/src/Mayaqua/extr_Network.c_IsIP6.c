
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* addr; } ;
typedef TYPE_1__ IP ;



bool IsIP6(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 0;
 }

 if (ip->addr[0] == 223 && ip->addr[1] == 255 && ip->addr[2] == 255 && ip->addr[3] == 254)
 {
  return 1;
 }

 return 0;
}
