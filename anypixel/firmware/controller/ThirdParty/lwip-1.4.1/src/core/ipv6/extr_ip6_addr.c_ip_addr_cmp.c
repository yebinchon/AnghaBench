
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct ip_addr {scalar_t__* addr; } ;



u8_t
ip_addr_cmp(struct ip_addr *addr1, struct ip_addr *addr2)
{
  return(addr1->addr[0] == addr2->addr[0] &&
         addr1->addr[1] == addr2->addr[1] &&
         addr1->addr[2] == addr2->addr[2] &&
         addr1->addr[3] == addr2->addr[3]);
}
