
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IntToSubnetMask6 (int *,int) ;
 int IsIP6 (int *) ;
 scalar_t__ IsNum (char*) ;
 int StrToIP (int *,char*) ;
 int ToInt (char*) ;

bool StrToMask6(IP *mask, char *str)
{

 if (mask == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 if (str[0] == '/')
 {
  str++;
 }

 if (IsNum(str))
 {
  UINT n = ToInt(str);

  if (n <= 128)
  {
   IntToSubnetMask6(mask, n);
   return 1;
  }
  else
  {
   return 0;
  }
 }
 else
 {
  if (StrToIP(mask, str) == 0)
  {
   return 0;
  }
  else
  {
   return IsIP6(mask);
  }
 }
}
