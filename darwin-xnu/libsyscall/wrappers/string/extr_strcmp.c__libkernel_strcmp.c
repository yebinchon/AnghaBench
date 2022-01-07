
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((visibility("hidden")))
int
_libkernel_strcmp(const char *s1, const char *s2)
{
 while (*s1 == *s2++)
  if (*s1++ == '\0')
   return (0);
 return (*(const unsigned char *)s1 - *(const unsigned char *)(s2 - 1));
}
