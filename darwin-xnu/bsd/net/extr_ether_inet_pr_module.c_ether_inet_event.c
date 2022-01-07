
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kev_msg {scalar_t__ vendor_code; scalar_t__ kev_class; scalar_t__ kev_subclass; scalar_t__ event_code; } ;
typedef int protocol_family_t ;
typedef int ifnet_t ;
typedef int * ifaddr_t ;


 int AF_INET ;
 scalar_t__ KEV_DL_LINK_ADDRESS_CHANGED ;
 scalar_t__ KEV_DL_SUBCLASS ;
 scalar_t__ KEV_NETWORK_CLASS ;
 scalar_t__ KEV_VENDOR_APPLE ;
 int ifnet_free_address_list (int **) ;
 scalar_t__ ifnet_get_address_list_family (int ,int ***,int ) ;
 int inet_arp_init_ifaddr (int ,int *) ;

__attribute__((used)) static void
ether_inet_event(ifnet_t ifp, protocol_family_t protocol,
    const struct kev_msg *event)
{
#pragma unused(protocol)
 ifaddr_t *addresses;

 if (event->vendor_code != KEV_VENDOR_APPLE ||
     event->kev_class != KEV_NETWORK_CLASS ||
     event->kev_subclass != KEV_DL_SUBCLASS ||
     event->event_code != KEV_DL_LINK_ADDRESS_CHANGED) {
  return;
 }

 if (ifnet_get_address_list_family(ifp, &addresses, AF_INET) == 0) {
  int i;

  for (i = 0; addresses[i] != ((void*)0); i++) {
   inet_arp_init_ifaddr(ifp, addresses[i]);
  }

  ifnet_free_address_list(addresses);
 }
}
