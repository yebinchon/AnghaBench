
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ StrCmpi (char*,char*) ;
 scalar_t__ StrToIP32 (char*) ;

bool IsIpStr4(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 if (StrToIP32(str) == 0 && StrCmpi(str, "0.0.0.0") != 0)
 {
  return 0;
 }

 return 1;
}
