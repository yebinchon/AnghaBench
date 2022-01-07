
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct pbuf {int dummy; } ;
struct netif {struct ethernetif* state; } ;
struct ip_addr {int dummy; } ;
struct ethernetif {int dummy; } ;
struct eth_hdr {int dummy; } ;
struct eth_addr {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;
 struct pbuf* etharp_output (struct netif*,struct ip_addr*,struct pbuf*) ;
 int low_level_output (struct ethernetif*,struct pbuf*) ;

__attribute__((used)) static err_t
ethernetif_output(struct netif *netif, struct pbuf *p,
      struct ip_addr *ipaddr)
{
  struct ethernetif *ethernetif;
  struct pbuf *q;
  struct eth_hdr *ethhdr;
  struct eth_addr *dest, mcastaddr;
  struct ip_addr *queryaddr;
  err_t err;
  u8_t i;

  ethernetif = netif->state;


  p = etharp_output(netif, ipaddr, p);


  if (p == ((void*)0))
  {


   return ERR_OK;
  }


  return low_level_output(ethernetif, p);

}
