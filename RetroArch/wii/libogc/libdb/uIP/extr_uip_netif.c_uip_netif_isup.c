
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct uip_netif {int flags; } ;


 int UIP_NETIF_FLAG_UP ;

u8_t uip_netif_isup(struct uip_netif *netif)
{
 return (netif->flags&UIP_NETIF_FLAG_UP);
}
