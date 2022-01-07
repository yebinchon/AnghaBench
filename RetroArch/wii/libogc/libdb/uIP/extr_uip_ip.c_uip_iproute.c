
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {int netmask; int ip_addr; struct uip_netif* next; } ;
struct uip_ip_addr {int dummy; } ;


 scalar_t__ ip_addr_netcmp (struct uip_ip_addr*,int *,int *) ;
 struct uip_netif* uip_netif_default ;
 struct uip_netif* uip_netif_list ;

struct uip_netif* uip_iproute(struct uip_ip_addr *dst)
{
 struct uip_netif *netif;

 for(netif=uip_netif_list;netif!=((void*)0);netif=netif->next) {
  if(ip_addr_netcmp(dst,&netif->ip_addr,&netif->netmask)) return netif;
 }

 return uip_netif_default;
}
