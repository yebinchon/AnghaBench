
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ IsIP6 (int *) ;

bool IsIP4(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 0;
 }

 return (IsIP6(ip) ? 0 : 1);
}
