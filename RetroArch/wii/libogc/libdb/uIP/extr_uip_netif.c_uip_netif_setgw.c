
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {int gw; } ;
struct uip_ip_addr {int dummy; } ;


 int ip_addr_set (int *,struct uip_ip_addr*) ;

void uip_netif_setgw(struct uip_netif *netif,struct uip_ip_addr *gw)
{
 ip_addr_set(&netif->gw,gw);
}
