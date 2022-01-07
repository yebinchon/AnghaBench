
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; } ;


 int NETIF_FLAG_UP ;

void netif_set_up(struct netif *netif)
{
  netif->flags |= NETIF_FLAG_UP;
}
