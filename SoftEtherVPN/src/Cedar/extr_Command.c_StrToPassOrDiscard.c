
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ ToInt (char*) ;

bool StrToPassOrDiscard(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 if (ToInt(str) != 0)
 {
  return 1;
 }

 if (StartWith(str, "p") || StartWith(str, "y") || StartWith(str, "t"))
 {
  return 1;
 }

 return 0;
}
