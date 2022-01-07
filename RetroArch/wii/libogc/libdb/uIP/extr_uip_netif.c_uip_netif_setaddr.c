
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;


 int uip_netif_setgw (struct uip_netif*,struct uip_ip_addr*) ;
 int uip_netif_setipaddr (struct uip_netif*,struct uip_ip_addr*) ;
 int uip_netif_setnetmask (struct uip_netif*,struct uip_ip_addr*) ;

void uip_netif_setaddr(struct uip_netif *netif,struct uip_ip_addr *ipaddr,struct uip_ip_addr *netmask,struct uip_ip_addr *gw)
{
 uip_netif_setipaddr(netif,ipaddr);
 uip_netif_setnetmask(netif,netmask);
 uip_netif_setgw(netif,gw);
}
