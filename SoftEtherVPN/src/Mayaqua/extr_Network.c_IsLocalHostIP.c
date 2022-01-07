
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ IsIP4 (int *) ;
 int IsLocalHostIP4 (int *) ;
 int IsLocalHostIP6 (int *) ;

bool IsLocalHostIP(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 0;
 }

 if (IsIP4(ip))
 {
  return IsLocalHostIP4(ip);
 }
 else
 {
  return IsLocalHostIP6(ip);
 }
}
