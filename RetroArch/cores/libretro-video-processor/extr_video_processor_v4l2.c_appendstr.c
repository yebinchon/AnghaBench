
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncat (char*,char const*,size_t) ;

__attribute__((used)) static void
appendstr(char *dst, const char *src, size_t dstsize)
{
   size_t resid = dstsize - (strlen(dst) + 1);
   if (resid == 0)
      return;
   strncat(dst, src, resid);
}
