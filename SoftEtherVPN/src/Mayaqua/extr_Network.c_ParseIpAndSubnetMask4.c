
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;
 int IsIP4 (int *) ;
 int ParseIpAndSubnetMask46 (char*,int *,int *) ;

bool ParseIpAndSubnetMask4(char *src, UINT *ip, UINT *mask)
{
 IP ip2, mask2;

 if (src == ((void*)0))
 {
  return 0;
 }

 if (ParseIpAndSubnetMask46(src, &ip2, &mask2) == 0)
 {
  return 0;
 }

 if (IsIP4(&ip2) == 0)
 {
  return 0;
 }

 if (ip != ((void*)0))
 {
  *ip = IPToUINT(&ip2);
 }

 if (mask != ((void*)0))
 {
  *mask = IPToUINT(&mask2);
 }

 return 1;
}
