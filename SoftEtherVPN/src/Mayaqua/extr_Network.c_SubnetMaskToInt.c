
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 scalar_t__ IsIP6 (int *) ;
 int SubnetMaskToInt4 (int *) ;
 int SubnetMaskToInt6 (int *) ;

UINT SubnetMaskToInt(IP *a)
{
 if (IsIP6(a))
 {
  return SubnetMaskToInt6(a);
 }
 else
 {
  return SubnetMaskToInt4(a);
 }
}
