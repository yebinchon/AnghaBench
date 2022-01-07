
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
outnum(char *p, int n)
{
 if (n>=10)
  p = outnum(p, n/10);
 *p++ = n%10 + '0';
 return p;
}
