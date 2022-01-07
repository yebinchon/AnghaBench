
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_netif {int flags; } ;


 int UIP_NETIF_FLAG_UP ;

void uip_netif_setup(struct uip_netif *netif)
{
 netif->flags |= UIP_NETIF_FLAG_UP;
}
