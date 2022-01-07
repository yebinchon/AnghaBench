
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int casencmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *strcasestr_retro__(const char *haystack, const char *needle)
{
   size_t i, search_off;
   size_t hay_len = strlen(haystack);
   size_t needle_len = strlen(needle);

   if (needle_len > hay_len)
      return ((void*)0);

   search_off = hay_len - needle_len;
   for (i = 0; i <= search_off; i++)
      if (!casencmp(haystack + i, needle, needle_len))
         return (char*)haystack + i;

   return ((void*)0);
}
