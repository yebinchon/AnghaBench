
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t strspn(const char *s1, const char *s2)
{
 const char *p = s1, *spanp;
 char c, sc;




cont:
 c = *p++;
 for (spanp = s2; (sc = *spanp++) != 0;)
  if (sc == c)
   goto cont;
 return (p - 1 - s1);
}
