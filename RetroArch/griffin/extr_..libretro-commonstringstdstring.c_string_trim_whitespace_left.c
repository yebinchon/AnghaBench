
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int memmove (char* const,char*,size_t) ;
 size_t strlen (char* const) ;

char *string_trim_whitespace_left(char *const s)
{
   if(s && *s)
   {
      size_t len = strlen(s);
      char *current = s;

      while(*current && isspace((unsigned char)*current))
      {
         ++current;
         --len;
      }

      if(s != current)
         memmove(s, current, len + 1);
   }

   return s;
}
