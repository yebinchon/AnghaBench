
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;
struct ip_addr {int dummy; } ;


 int netif_set_gw (struct netif*,struct ip_addr*) ;
 int netif_set_ipaddr (struct netif*,struct ip_addr*) ;
 int netif_set_netmask (struct netif*,struct ip_addr*) ;

void
netif_set_addr(struct netif *netif,struct ip_addr *ipaddr, struct ip_addr *netmask,
    struct ip_addr *gw)
{
  netif_set_ipaddr(netif, ipaddr);
  netif_set_netmask(netif, netmask);
  netif_set_gw(netif, gw);
}
