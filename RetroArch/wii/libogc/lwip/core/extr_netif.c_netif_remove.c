
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {struct netif* next; } ;


 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 struct netif* netif_default ;
 struct netif* netif_list ;

void netif_remove(struct netif * netif)
{
  if ( netif == ((void*)0) ) return;


  if (netif_list == netif) {
    netif_list = netif->next;
  }
  else {

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

  if (netif_default == netif)

    netif_default = ((void*)0);
  LWIP_DEBUGF( NETIF_DEBUG, ("netif_remove: removed netif\n") );
}
