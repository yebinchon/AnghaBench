
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int* addr; } ;
typedef TYPE_1__ IP ;


 int IsIP4 (TYPE_1__*) ;
 scalar_t__ IsZeroIP (TYPE_1__*) ;

bool IsValidUnicastIPAddress4(IP *ip)
{
 UINT i;

 if (IsIP4(ip) == 0)
 {
  return 0;
 }

 if (IsZeroIP(ip))
 {
  return 0;
 }

 if (ip->addr[0] >= 224 && ip->addr[0] <= 239)
 {

  return 0;
 }

 for (i = 0;i < 4;i++)
 {
  if (ip->addr[i] != 255)
  {
   return 1;
  }
 }

 return 0;
}
