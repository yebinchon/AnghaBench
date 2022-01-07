
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strcspn(const char *s1, const char *s2)
{
 const char *p, *spanp;
 char c, sc;





 for (p = s1;;) {
  c = *p++;
  spanp = s2;
  do {
   if ((sc = *spanp++) == c)
    return (p - 1 - s1);
  } while (sc != 0);
 }

}
