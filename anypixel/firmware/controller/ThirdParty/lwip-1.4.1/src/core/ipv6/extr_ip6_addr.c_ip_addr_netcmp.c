
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct ip_addr {int* addr; } ;



u8_t
ip_addr_netcmp(struct ip_addr *addr1, struct ip_addr *addr2,
                struct ip_addr *mask)
{
  return((addr1->addr[0] & mask->addr[0]) == (addr2->addr[0] & mask->addr[0]) &&
         (addr1->addr[1] & mask->addr[1]) == (addr2->addr[1] & mask->addr[1]) &&
         (addr1->addr[2] & mask->addr[2]) == (addr2->addr[2] & mask->addr[2]) &&
         (addr1->addr[3] & mask->addr[3]) == (addr2->addr[3] & mask->addr[3]));

}
