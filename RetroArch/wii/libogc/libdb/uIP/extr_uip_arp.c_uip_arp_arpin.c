
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8_t ;
struct uip_pbuf {int tot_len; struct uip_arp_hdr* payload; } ;
struct TYPE_12__ {scalar_t__ addr; } ;
struct uip_netif {size_t hwaddr_len; int (* linkoutput ) (struct uip_netif*,struct uip_pbuf*) ;TYPE_6__ ip_addr; } ;
struct uip_ip_addr2 {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
struct uip_eth_addr {int * addr; } ;
struct TYPE_9__ {int * addr; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_10__ {TYPE_3__ src; TYPE_1__ dest; } ;
struct TYPE_8__ {int * addr; } ;
struct TYPE_11__ {int * addr; } ;
struct uip_arp_hdr {int opcode; int hwtype; int protocol; TYPE_4__ ethhdr; TYPE_2__ dhwaddr; TYPE_5__ shwaddr; struct uip_ip_addr2 sipaddr; struct uip_ip_addr2 dipaddr; } ;


 int ARPH_HWLEN_SET (struct uip_arp_hdr*,size_t) ;
 int ARPH_PROTOLEN_SET (struct uip_arp_hdr*,int) ;
 int ARP_HWTYPE_ETH ;


 int ARP_TRY_HARD ;
 int UIP_ETHTYPE_IP ;
 int UIP_LOG (char*) ;
 int htons (int) ;
 size_t ip_addr_cmp (struct uip_ip_addr*,TYPE_6__*) ;
 int stub1 (struct uip_netif*,struct uip_pbuf*) ;
 int uip_arp_update (struct uip_netif*,struct uip_ip_addr*,TYPE_5__*,int ) ;
 int uip_pbuf_free (struct uip_pbuf*) ;

void
uip_arp_arpin(struct uip_netif *netif,struct uip_eth_addr *ethaddr,struct uip_pbuf *p)
{
 u8_t i,for_us;
 struct uip_ip_addr sipaddr,dipaddr;
 struct uip_arp_hdr *hdr;

 if(p->tot_len<sizeof(struct uip_arp_hdr)) {
  uip_pbuf_free(p);
  return;
 }

 hdr = p->payload;

 *(struct uip_ip_addr2*)((void*)&sipaddr) = hdr->sipaddr;
 *(struct uip_ip_addr2*)((void*)&dipaddr) = hdr->dipaddr;

 if(netif->ip_addr.addr==0) for_us = 0;
 else for_us = ip_addr_cmp(&dipaddr,&netif->ip_addr);

 if(for_us) uip_arp_update(netif,&sipaddr,&hdr->shwaddr,ARP_TRY_HARD);
 else uip_arp_update(netif,&sipaddr,&hdr->shwaddr,0);

 switch(htons(hdr->opcode)) {
  case 128:
   if(for_us) {
    hdr->opcode = htons(129);
    hdr->dipaddr = hdr->sipaddr;
    hdr->sipaddr = *(struct uip_ip_addr2*)((void*)&netif->ip_addr);

    for(i=0;i<netif->hwaddr_len;i++) {
     hdr->dhwaddr.addr[i] = hdr->shwaddr.addr[i];
     hdr->shwaddr.addr[i] = ethaddr->addr[i];
     hdr->ethhdr.dest.addr[i] = hdr->dhwaddr.addr[i];
     hdr->ethhdr.src.addr[i] = ethaddr->addr[i];
    }

    hdr->hwtype = htons(ARP_HWTYPE_ETH);
    ARPH_HWLEN_SET(hdr,netif->hwaddr_len);

    hdr->protocol = htons(UIP_ETHTYPE_IP);
    ARPH_PROTOLEN_SET(hdr,sizeof(struct uip_ip_addr));

    netif->linkoutput(netif,p);
   } else {
    UIP_LOG("uip_arp_arpin: ip packet not for us.\n");
   }
   break;
  case 129:
   break;
  default:
   UIP_LOG("uip_arp_arpin: ARP unknown opcode type.\n");
   break;
 }
 uip_pbuf_free(p);
}
