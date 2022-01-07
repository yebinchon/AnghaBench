
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strncmp(const char *s1, const char *s2, size_t n)
{
   if (n == 0)
  return (0);
 do {
  if (*s1 != *s2++)
   return (*(unsigned char *)s1 - *(unsigned char *)--s2);
  if (*s1++ == 0)
   break;
 } while (--n != 0);
 return (0);
}
