
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_pbuf {struct uip_eth_hdr* payload; } ;
struct uip_netif {int (* input ) (struct uip_pbuf*,struct uip_netif*) ;scalar_t__ state; } ;
struct uip_eth_hdr {int type; } ;
struct bba_priv {int ethaddr; } ;
typedef int s32 ;




 int htons (int ) ;
 int stub1 (struct uip_pbuf*,struct uip_netif*) ;
 int uip_arp_arpin (struct uip_netif*,int ,struct uip_pbuf*) ;
 int uip_arp_ipin (struct uip_netif*,struct uip_pbuf*) ;
 int uip_pbuf_free (struct uip_pbuf*) ;
 int uip_pbuf_header (struct uip_pbuf*,int const) ;

__attribute__((used)) static void bba_process(struct uip_pbuf *p,struct uip_netif *dev)
{
 struct uip_eth_hdr *ethhdr = ((void*)0);
 struct bba_priv *priv = (struct bba_priv*)dev->state;
 const s32 ethhlen = sizeof(struct uip_eth_hdr);

 if(p) {
  ethhdr = p->payload;
  switch(htons(ethhdr->type)) {
   case 128:
    uip_arp_ipin(dev,p);
    uip_pbuf_header(p,-(ethhlen));
    dev->input(p,dev);
    break;
   case 129:
    uip_arp_arpin(dev,priv->ethaddr,p);
    break;
   default:
    uip_pbuf_free(p);
    break;
  }
 }
}
