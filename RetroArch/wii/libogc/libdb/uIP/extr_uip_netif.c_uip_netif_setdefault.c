
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {int dummy; } ;


 struct uip_netif* uip_netif_default ;

void uip_netif_setdefault(struct uip_netif *netif)
{
 uip_netif_default = netif;
}
