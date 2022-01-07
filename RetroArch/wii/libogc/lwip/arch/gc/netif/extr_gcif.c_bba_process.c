
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {struct eth_hdr* payload; } ;
struct netif {scalar_t__ state; } ;
struct eth_hdr {int type; } ;
struct bba_priv {int ethaddr; } ;
typedef int s32 ;




 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int etharp_arp_input (struct netif*,int ,struct pbuf*) ;
 int etharp_ip_input (struct netif*,struct pbuf*) ;
 int htons (int ) ;
 int ip_input (struct pbuf*,struct netif*) ;
 int pbuf_free (struct pbuf*) ;
 int pbuf_header (struct pbuf*,int const) ;

void bba_process(struct pbuf *p,struct netif *dev)
{
 struct eth_hdr *ethhdr = ((void*)0);
 struct bba_priv *priv = (struct bba_priv*)dev->state;
 const s32 hlen = sizeof(struct eth_hdr);

 if(p) {
  ethhdr = p->payload;
  switch(htons(ethhdr->type)) {
   case 128:
    LWIP_DEBUGF(NETIF_DEBUG,("bba_process: passing packet up to IP layer\n"));

    etharp_ip_input(dev,p);
    pbuf_header(p,-(hlen));
    ip_input(p,dev);
    break;
   case 129:

    LWIP_DEBUGF(NETIF_DEBUG,("bba_process: passing packet up to ARP layer\n"));
    etharp_arp_input(dev, priv->ethaddr, p);
    break;

   default:

    pbuf_free(p);
    break;
  }
 }
}
