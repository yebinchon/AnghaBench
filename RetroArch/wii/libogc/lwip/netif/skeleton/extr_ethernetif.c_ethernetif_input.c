
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pbuf {struct eth_hdr* payload; } ;
struct netif {int (* input ) (struct pbuf*,struct netif*) ;struct ethernetif* state; } ;
struct ethernetif {int ethaddr; } ;
struct eth_hdr {int type; } ;
struct TYPE_3__ {int recv; } ;
struct TYPE_4__ {TYPE_1__ link; } ;




 struct pbuf* etharp_arp_input (struct netif*,int ,struct pbuf*) ;
 struct pbuf* etharp_ip_input (struct netif*,struct pbuf*) ;
 int htons (int ) ;
 struct pbuf* low_level_input (struct ethernetif*) ;
 int low_level_output (struct ethernetif*,struct pbuf*) ;
 TYPE_2__ lwip_stats ;
 int pbuf_free (struct pbuf*) ;
 int pbuf_header (struct pbuf*,int) ;
 int stub1 (struct pbuf*,struct netif*) ;

__attribute__((used)) static void
ethernetif_input(struct netif *netif)
{
  struct ethernetif *ethernetif;
  struct eth_hdr *ethhdr;
  struct pbuf *p, *q;

  ethernetif = netif->state;

  p = low_level_input(ethernetif);

  if (p != ((void*)0))
    return;





  ethhdr = p->payload;
  q = ((void*)0);

  switch (htons(ethhdr->type)) {
    case 128:
      q = etharp_ip_input(netif, p);
      pbuf_header(p, -14);
      netif->input(p, netif);
      break;

    case 129:
      q = etharp_arp_input(netif, ethernetif->ethaddr, p);
      break;
    default:
      pbuf_free(p);
      p = ((void*)0);
      break;
  }
  if (q != ((void*)0)) {
    low_level_output(ethernetif, q);
    pbuf_free(q);
    q = ((void*)0);
  }
}
