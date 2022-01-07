
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 scalar_t__ IsIP4 (int *) ;
 int IsSubnetMask4 (int *) ;
 int IsSubnetMask6 (int *) ;
 int ParseIpAndMask46 (char*,int *,int *) ;

bool ParseIpAndSubnetMask46(char *src, IP *ip, IP *mask)
{

 if (src == ((void*)0) || ip == ((void*)0) || mask == ((void*)0))
 {
  return 0;
 }

 if (ParseIpAndMask46(src, ip, mask) == 0)
 {
  return 0;
 }

 if (IsIP4(ip))
 {
  return IsSubnetMask4(mask);
 }
 else
 {
  return IsSubnetMask6(mask);
 }
}
