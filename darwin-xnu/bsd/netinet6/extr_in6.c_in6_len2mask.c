
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int* s6_addr8; } ;


 int bzero (struct in6_addr*,int) ;

void
in6_len2mask(struct in6_addr *mask, int len)
{
 int i;

 bzero(mask, sizeof (*mask));
 for (i = 0; i < len / 8; i++)
  mask->s6_addr8[i] = 0xff;
 if (len % 8)
  mask->s6_addr8[i] = (0xff00 >> (len % 8)) & 0xff;
}
