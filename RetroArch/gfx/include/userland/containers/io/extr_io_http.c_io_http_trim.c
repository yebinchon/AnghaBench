
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static char *io_http_trim(char *str)
{
   char *s = str + strlen(str);


   while (--s >= str &&(*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r'))
      ;
   s[1] = '\0';


   s = str;
   while (*s == ' ' || *s == '\t' || *s == '\n' || *s == '\r')
      s++;

   return s;
}
