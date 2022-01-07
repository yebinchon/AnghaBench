
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int IntToSubnetMask4 (int *,int) ;
 int IsIP4 (int *) ;

UINT SubnetMaskToInt4(IP *a)
{
 UINT i;

 if (IsIP4(a) == 0)
 {
  return 0;
 }

 for (i = 0;i <= 32;i++)
 {
  IP tmp;

  IntToSubnetMask4(&tmp, i);

  if (CmpIpAddr(a, &tmp) == 0)
  {
   return i;
  }
 }

 return 0;
}
