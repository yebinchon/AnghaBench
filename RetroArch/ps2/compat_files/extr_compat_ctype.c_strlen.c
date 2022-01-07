
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strlen(const char *str)
{
   const char *s;

 for (s = str; *s; ++s)
  ;
 return (s - str);
}
