
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_ip_addr {int dummy; } ;
struct uip_tcp_pcb_listen {struct uip_ip_addr local_ip; struct uip_tcp_pcb_listen* next; } ;
struct uip_tcp_pcb {struct uip_tcp_pcb* next; struct uip_ip_addr local_ip; } ;
struct uip_netif {struct uip_ip_addr ip_addr; } ;
struct TYPE_2__ {struct uip_tcp_pcb_listen* listen_pcbs; } ;


 scalar_t__ ip_addr_cmp (struct uip_ip_addr*,struct uip_ip_addr*) ;
 int ip_addr_set (struct uip_ip_addr*,struct uip_ip_addr*) ;
 struct uip_tcp_pcb* uip_tcp_active_pcbs ;
 TYPE_1__ uip_tcp_listen_pcbs ;

void uip_netif_setipaddr(struct uip_netif *netif,struct uip_ip_addr *ipaddr)
{
 ip_addr_set(&netif->ip_addr,ipaddr);
}
