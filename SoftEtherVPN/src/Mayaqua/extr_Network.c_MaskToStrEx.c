
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToStr (char*,int ,int *) ;
 scalar_t__ IsSubnetMask (int *) ;
 int SubnetMaskToInt (int *) ;
 int ToStr (char*,int ) ;

void MaskToStrEx(char *str, UINT size, IP *mask, bool always_full_address)
{

 if (str == ((void*)0) || mask == ((void*)0))
 {
  return;
 }

 if (always_full_address == 0 && IsSubnetMask(mask))
 {
  ToStr(str, SubnetMaskToInt(mask));
 }
 else
 {
  IPToStr(str, size, mask);
 }
}
