
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int IsIP6 (int *) ;
 int ParseIpAndMask46 (char*,int *,int *) ;

bool ParseIpAndMask6(char *src, IP *ip, IP *mask)
{
 if (ParseIpAndMask46(src, ip, mask) == 0)
 {
  return 0;
 }

 if (IsIP6(ip) == 0)
 {
  return 0;
 }

 return 1;
}
