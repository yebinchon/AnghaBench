
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ IsIP6 (int *) ;
 int IsSubnetMask4 (int *) ;
 int IsSubnetMask6 (int *) ;

bool IsSubnetMask(IP *ip)
{
 if (IsIP6(ip))
 {
  return IsSubnetMask6(ip);
 }
 else
 {
  return IsSubnetMask4(ip);
 }
}
