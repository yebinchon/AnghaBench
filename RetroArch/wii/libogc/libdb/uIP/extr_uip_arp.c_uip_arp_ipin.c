
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uip_pbuf {struct uip_ethip_hdr* payload; } ;
struct uip_netif {int netmask; int ip_addr; } ;
struct TYPE_4__ {int src; } ;
struct TYPE_3__ {int src; } ;
struct uip_ethip_hdr {TYPE_2__ ethhdr; TYPE_1__ ip; } ;


 int ip_addr_netcmp (int *,int *,int *) ;
 int uip_arp_update (struct uip_netif*,int *,int *,int ) ;

void
uip_arp_ipin(struct uip_netif *netif,struct uip_pbuf *p)
{
 struct uip_ethip_hdr *hdr;

 hdr = p->payload;
 if(!ip_addr_netcmp(&hdr->ip.src,&netif->ip_addr,&netif->netmask)) return;

 uip_arp_update(netif,&hdr->ip.src,&hdr->ethhdr.src,0);
 }
