
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ipv6_addr; int addr; } ;
typedef TYPE_1__ IP ;


 int IsIP6 (TYPE_1__*) ;
 int IsZero (int ,int) ;

bool IsZeroIp(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 1;
 }

 if (IsIP6(ip) == 0)
 {
  return IsZero(ip->addr, sizeof(ip->addr));
 }
 else
 {
  return IsZero(ip->ipv6_addr, sizeof(ip->ipv6_addr));
 }
}
