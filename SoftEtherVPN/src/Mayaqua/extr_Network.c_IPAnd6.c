
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int* ipv6_addr; } ;
typedef TYPE_1__ IP ;


 int IsIP6 (TYPE_1__*) ;
 int ZeroIP6 (TYPE_1__*) ;

void IPAnd6(IP *dst, IP *a, IP *b)
{
 UINT i;

 if (dst == ((void*)0) || IsIP6(a) == 0 || IsIP6(b) == 0)
 {
  ZeroIP6(dst);
  return;
 }

 ZeroIP6(dst);
 for (i = 0;i < 16;i++)
 {
  dst->ipv6_addr[i] = a->ipv6_addr[i] & b->ipv6_addr[i];
 }
}
