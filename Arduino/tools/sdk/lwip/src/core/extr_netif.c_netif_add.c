
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
struct netif {int flags; int * name; struct netif* next; scalar_t__ loop_cnt_current; int * addr_hint; int input; scalar_t__ num; void* state; int * loop_last; int * loop_first; int * igmp_mac_filter; int * link_callback; int * status_callback; int * autoip; int * dhcps_pcb; int * dhcp; int gw; int netmask; int ip_addr; } ;
typedef int netif_input_fn ;
typedef scalar_t__ (* netif_init_fn ) (struct netif*) ;
typedef int ip_addr_t ;


 scalar_t__ ERR_OK ;
 int LWIP_ASSERT (char*,int ) ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int NETIF_FLAG_IGMP ;
 int igmp_start (struct netif*) ;
 int ip_addr_debug_print (int ,int *) ;
 int ip_addr_set_zero (int *) ;
 struct netif* netif_list ;
 int netif_set_addr (struct netif*,int *,int *,int *) ;
 int snmp_inc_iflist () ;

struct netif *
netif_add(struct netif *netif, ip_addr_t *ipaddr, ip_addr_t *netmask,
  ip_addr_t *gw, void *state, netif_init_fn init, netif_input_fn input)
{
  static u8_t netifnum = 0;

  LWIP_ASSERT("No init function given", init != ((void*)0));


  ip_addr_set_zero(&netif->ip_addr);
  ip_addr_set_zero(&netif->netmask);
  ip_addr_set_zero(&netif->gw);
  netif->flags = 0;
  netif->state = state;
  netif->num = netifnum++;
  netif->input = input;







  netif_set_addr(netif, ipaddr, netmask, gw);


  if (init(netif) != ERR_OK) {
    return ((void*)0);
  }


  netif->next = netif_list;
  netif_list = netif;
  snmp_inc_iflist();
  LWIP_DEBUGF(NETIF_DEBUG, ("netif: added interface %c%c IP addr ",
    netif->name[0], netif->name[1]));
  ip_addr_debug_print(NETIF_DEBUG, ipaddr);
  LWIP_DEBUGF(NETIF_DEBUG, (" netmask "));
  ip_addr_debug_print(NETIF_DEBUG, netmask);
  LWIP_DEBUGF(NETIF_DEBUG, (" gw "));
  ip_addr_debug_print(NETIF_DEBUG, gw);
  LWIP_DEBUGF(NETIF_DEBUG, ("\n"));
  return netif;
}
