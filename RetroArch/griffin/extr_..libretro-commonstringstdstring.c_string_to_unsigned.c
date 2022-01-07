
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 scalar_t__ string_is_empty (char const*) ;
 int strtoul (char const*,int *,int) ;

unsigned string_to_unsigned(const char *str)
{
   const char *ptr = ((void*)0);

   if (string_is_empty(str))
      return 0;

   for (ptr = str; *ptr != '\0'; ptr++)
   {
      if (!isdigit(*ptr))
         return 0;
   }

   return (unsigned)strtoul(str, ((void*)0), 10);
}
