
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ToInt (char*) ;

int ToInti(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 return (int)ToInt(str);
}
