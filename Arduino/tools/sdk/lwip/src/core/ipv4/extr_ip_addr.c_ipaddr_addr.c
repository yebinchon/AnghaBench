
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int ip_addr_t ;


 int IPADDR_NONE ;
 int ip4_addr_get_u32 (int *) ;
 scalar_t__ ipaddr_aton (char const*,int *) ;

u32_t
ipaddr_addr(const char *cp)
{
  ip_addr_t val;

  if (ipaddr_aton(cp, &val)) {
    return ip4_addr_get_u32(&val);
  }
  return (IPADDR_NONE);
}
