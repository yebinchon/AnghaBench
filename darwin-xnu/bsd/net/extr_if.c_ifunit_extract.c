
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char const*,char*,size_t) ;
 size_t strlen (char const*) ;

int
ifunit_extract(const char *src, char *dst, size_t dstlen, int *unit)
{
 const char *cp;
 size_t len, m;
 char c;
 int u;

 if (src == ((void*)0) || dst == ((void*)0) || dstlen == 0 || unit == ((void*)0))
  return (-1);

 len = strlen(src);
 if (len < 2 || len > dstlen)
  return (-1);
 cp = src + len - 1;
 c = *cp;
 if (c < '0' || c > '9')
  return (-1);
 u = 0;
 m = 1;
 do {
  if (cp == src)
   return (-1);
  u += (c - '0') * m;
  if (u > 1000000)
   return (-1);
  m *= 10;
  c = *--cp;
 } while (c >= '0' && c <= '9');
 len = cp - src + 1;
 bcopy(src, dst, len);
 dst[len] = '\0';
 *unit = u;

 return (0);
}
