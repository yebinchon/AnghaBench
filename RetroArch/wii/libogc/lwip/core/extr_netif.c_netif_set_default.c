
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {char* name; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 struct netif* netif_default ;

void
netif_set_default(struct netif *netif)
{
  netif_default = netif;
  LWIP_DEBUGF(NETIF_DEBUG, ("netif: setting default interface %c%c\n",
           netif ? netif->name[0] : '\'', netif ? netif->name[1] : '\''));
}
