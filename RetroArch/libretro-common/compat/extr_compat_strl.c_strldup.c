
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int strlcpy (char*,char const*,size_t) ;

char *strldup(const char *s, size_t n)
{
   char *dst = (char*)malloc(sizeof(char) * (n + 1));
   strlcpy(dst, s, n);
   return dst;
}
