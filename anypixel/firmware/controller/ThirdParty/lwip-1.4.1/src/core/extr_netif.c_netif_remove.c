
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int flags; int (* remove_callback ) (struct netif*) ;struct netif* next; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int NETIF_FLAG_IGMP ;
 int igmp_stop (struct netif*) ;
 struct netif* netif_default ;
 scalar_t__ netif_is_up (struct netif*) ;
 struct netif* netif_list ;
 int netif_set_default (int *) ;
 int netif_set_down (struct netif*) ;
 int snmp_dec_iflist () ;
 int snmp_delete_ipaddridx_tree (struct netif*) ;
 int stub1 (struct netif*) ;

void
netif_remove(struct netif *netif)
{
  if (netif == ((void*)0)) {
    return;
  }







  if (netif_is_up(netif)) {

    netif_set_down(netif);
  }

  snmp_delete_ipaddridx_tree(netif);


  if (netif_list == netif) {
    netif_list = netif->next;
  } else {

    struct netif * tmpNetif;
    for (tmpNetif = netif_list; tmpNetif != ((void*)0); tmpNetif = tmpNetif->next) {
      if (tmpNetif->next == netif) {
        tmpNetif->next = netif->next;
        break;
      }
    }
    if (tmpNetif == ((void*)0))
      return;
  }
  snmp_dec_iflist();

  if (netif_default == netif) {

    netif_set_default(((void*)0));
  }





  LWIP_DEBUGF( NETIF_DEBUG, ("netif_remove: removed netif\n") );
}
