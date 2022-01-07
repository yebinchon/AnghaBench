
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 scalar_t__ StrLen (char*) ;

UINT StrSize(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 return StrLen(str) + 1;
}
