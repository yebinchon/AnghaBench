
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int IntToSubnetMask6 (int *,int) ;
 int IsIP6 (int *) ;

UINT SubnetMaskToInt6(IP *a)
{
 UINT i;

 if (IsIP6(a) == 0)
 {
  return 0;
 }

 for (i = 0;i <= 128;i++)
 {
  IP tmp;

  IntToSubnetMask6(&tmp, i);

  if (CmpIpAddr(a, &tmp) == 0)
  {
   return i;
  }
 }

 return 0;
}
