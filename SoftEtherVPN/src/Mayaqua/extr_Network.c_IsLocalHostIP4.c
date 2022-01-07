
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* addr; } ;
typedef TYPE_1__ IP ;


 int IsIP4 (TYPE_1__*) ;

bool IsLocalHostIP4(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 0;
 }
 if (IsIP4(ip) == 0)
 {
  return 0;
 }

 if (ip->addr[0] == 127)
 {
  return 1;
 }

 return 0;
}
