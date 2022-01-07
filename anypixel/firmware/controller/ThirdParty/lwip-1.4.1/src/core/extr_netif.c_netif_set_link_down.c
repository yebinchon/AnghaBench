
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; } ;


 int NETIF_FLAG_LINK_UP ;
 int NETIF_LINK_CALLBACK (struct netif*) ;

void netif_set_link_down(struct netif *netif )
{
  if (netif->flags & NETIF_FLAG_LINK_UP) {
    netif->flags &= ~NETIF_FLAG_LINK_UP;
    NETIF_LINK_CALLBACK(netif);
  }
}
