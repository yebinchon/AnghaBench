
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static const char *vc_uri_find_delimiter(const char *str, const char *delimiters)
{
   const char *ptr = str;
   char c;

   while ((c = *ptr) != 0)
   {
      if (strchr(delimiters, c) != 0)
         break;
      ptr++;
   }

   return ptr;
}
