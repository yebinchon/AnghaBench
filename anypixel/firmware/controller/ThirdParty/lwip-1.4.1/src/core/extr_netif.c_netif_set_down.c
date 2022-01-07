
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; int ts; } ;


 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_UP ;
 int NETIF_STATUS_CALLBACK (struct netif*) ;
 int etharp_cleanup_netif (struct netif*) ;
 int snmp_get_sysuptime (int *) ;

void netif_set_down(struct netif *netif)
{
  if (netif->flags & NETIF_FLAG_UP) {
    netif->flags &= ~NETIF_FLAG_UP;
    NETIF_STATUS_CALLBACK(netif);
  }
}
