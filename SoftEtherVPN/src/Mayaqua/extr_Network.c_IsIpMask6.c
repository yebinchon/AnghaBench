
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int StrToMask6 (int *,char*) ;

bool IsIpMask6(char *str)
{
 IP mask;

 if (str == ((void*)0))
 {
  return 0;
 }

 return StrToMask6(&mask, str);
}
