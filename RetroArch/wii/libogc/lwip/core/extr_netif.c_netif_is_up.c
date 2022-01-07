
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct netif {int flags; } ;


 int NETIF_FLAG_UP ;

u8_t netif_is_up(struct netif *netif)
{
  return (netif->flags & NETIF_FLAG_UP)?1:0;
}
