
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (char const) ;
 char const tolower (char const) ;

int
opteq(const char *cp, const char *dp)
{
 char c, d;

 for (; ; cp++, dp++) {
  if (*cp != *dp) {
   c = isupper(*cp) ? tolower(*cp) : *cp;
   d = isupper(*dp) ? tolower(*dp) : *dp;
   if (c != d)
    return (0);
  }
  if (*cp == 0)
   return (1);
 }
}
