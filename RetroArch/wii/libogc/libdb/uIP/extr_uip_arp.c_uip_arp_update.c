
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct uip_netif {size_t hwaddr_len; } ;
struct uip_ip_addr {int dummy; } ;
struct uip_eth_addr {int * addr; } ;
typedef size_t s8_t ;
struct TYPE_3__ {int * addr; } ;
struct TYPE_4__ {TYPE_1__ ethaddr; int state; scalar_t__ time; } ;


 int ARP_STATE_STABLE ;
 size_t UIP_ERR_ARG ;
 size_t UIP_ERR_OK ;
 TYPE_2__* arp_table ;
 scalar_t__ ip_addr_isany (struct uip_ip_addr*) ;
 scalar_t__ ip_addr_isbroadcast (struct uip_ip_addr*,struct uip_netif*) ;
 scalar_t__ ip_addr_ismulticast (struct uip_ip_addr*) ;
 size_t uip_arp_findentry (struct uip_ip_addr*,int ) ;

__attribute__((used)) static s8_t uip_arp_update(struct uip_netif *netif,struct uip_ip_addr *ipaddr, struct uip_eth_addr *ethaddr,u8_t flags)
{
 s8_t i,k;

 if(ip_addr_isany(ipaddr) ||
  ip_addr_isbroadcast(ipaddr,netif) ||
  ip_addr_ismulticast(ipaddr)) return UIP_ERR_ARG;

 i = uip_arp_findentry(ipaddr,flags);
 if(i<0) return i;

 arp_table[i].time = 0;
 arp_table[i].state = ARP_STATE_STABLE;
 for(k=0;k<netif->hwaddr_len;k++) arp_table[i].ethaddr.addr[k] = ethaddr->addr[k];

 return UIP_ERR_OK;
}
