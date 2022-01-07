
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPV6_ADDR ;


 int IsZero (int *,int) ;

bool IsZeroIP6Addr(IPV6_ADDR *addr)
{

 if (addr == ((void*)0))
 {
  return 1;
 }

 return IsZero(addr, sizeof(IPV6_ADDR));
}
