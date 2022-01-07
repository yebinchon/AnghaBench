
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ realloc (char*,size_t) ;
 int strcpy (char*,char const*) ;
 char* strcpy_alloc_force (char const*) ;
 size_t strlen (char const*) ;

void strcat_alloc(char **dst, const char *s)
{
   size_t len1;
   char *src = *dst;

   if (!src)
   {
      src = strcpy_alloc_force(s);
      *dst = src;
      return;
   }

   if (!s)
      return;

   len1 = strlen(src);
   src = (char*)realloc(src, len1 + strlen(s) + 1);

   if (!src)
      return;

   *dst = src;
   strcpy(src + len1, s);
}
