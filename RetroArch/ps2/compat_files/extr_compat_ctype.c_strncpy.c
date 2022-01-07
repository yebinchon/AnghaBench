
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * strncpy(char *dst, const char *src, size_t n)
{
 if (n != 0) {
  char *d = dst;
  const char *s = src;

  do {
   if ((*d++ = *s++) == 0) {

    while (--n != 0)
     *d++ = 0;
    break;
   }
  } while (--n != 0);
 }
 return (dst);
}
