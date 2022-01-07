
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 size_t strlen (char* const) ;

char *string_trim_whitespace_right(char *const s)
{
   if(s && *s)
   {
      size_t len = strlen(s);
      char *current = s + len - 1;

      while(current != s && isspace((unsigned char)*current))
      {
         --current;
         --len;
      }

      current[isspace((unsigned char)*current) ? 0 : 1] = '\0';
   }

   return s;
}
