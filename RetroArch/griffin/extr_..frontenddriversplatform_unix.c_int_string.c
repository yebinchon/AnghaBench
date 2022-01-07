
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtol (char*,char**,int ) ;

__attribute__((used)) static bool int_string(char *str, int *val)
{
   char *endptr = ((void*)0);
   if (!str)
      return 0;

   *val = (int) strtol(str, &endptr, 0);
   return ((*str != '\0') && (*endptr == '\0'));
}
