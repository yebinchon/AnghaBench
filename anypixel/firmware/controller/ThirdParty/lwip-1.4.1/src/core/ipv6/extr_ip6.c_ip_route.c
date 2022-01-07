
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int netmask; int ip_addr; struct netif* next; } ;
struct ip_addr {int dummy; } ;


 scalar_t__ ip_addr_netcmp (struct ip_addr*,int *,int *) ;
 struct netif* netif_default ;
 struct netif* netif_list ;

struct netif *
ip_route(struct ip_addr *dest)
{
  struct netif *netif;

  for(netif = netif_list; netif != ((void*)0); netif = netif->next) {
    if (ip_addr_netcmp(dest, &(netif->ip_addr), &(netif->netmask))) {
      return netif;
    }
  }

  return netif_default;
}
