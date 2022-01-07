
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
struct in_addr {int s_addr; } ;


 int UIP_INADDR_NONE ;
 scalar_t__ uip_ipaton (int const*,struct in_addr*) ;

u32_t uip_ipaddr(const u8_t *cp)
{
 struct in_addr val;

 if(uip_ipaton(cp,&val)) return (val.s_addr);

 return (UIP_INADDR_NONE);
}
