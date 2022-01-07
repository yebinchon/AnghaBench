
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct uip_pbuf {scalar_t__ tot_len; struct uip_ip_hdr* payload; } ;
struct uip_ip_addr {int dummy; } ;
struct uip_netif {scalar_t__ mtu; int (* output ) (struct uip_netif*,struct uip_pbuf*,struct uip_ip_addr*) ;struct uip_ip_addr ip_addr; } ;
struct uip_ip_hdr {struct uip_ip_addr dst; struct uip_ip_addr src; } ;
typedef int s8_t ;


 int UIP_ERROR (char*) ;
 int UIP_ERR_BUF ;
 int UIP_IPH_CHKSUM_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_ID_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_LEN_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_OFFSET_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_PROTO_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_TTL_SET (struct uip_ip_hdr*,int ) ;
 int UIP_IPH_VHLTOS_SET (struct uip_ip_hdr*,int,int,int ) ;
 scalar_t__ UIP_IP_DF ;
 int UIP_IP_HLEN ;
 int htons (scalar_t__) ;
 scalar_t__ ip_addr_isany (struct uip_ip_addr*) ;
 int ip_addr_set (struct uip_ip_addr*,struct uip_ip_addr*) ;
 int stub1 (struct uip_netif*,struct uip_pbuf*,struct uip_ip_addr*) ;
 int uip_ipchksum (struct uip_ip_hdr*,int) ;
 int uip_ipfrag (struct uip_pbuf*,struct uip_netif*,struct uip_ip_addr*) ;
 scalar_t__ uip_pbuf_header (struct uip_pbuf*,int) ;

s8_t uip_ipoutput_if(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t ttl,u8_t tos,u8_t proto,struct uip_netif *netif)
{
 struct uip_ip_hdr *iphdr = ((void*)0);
 u16_t ip_id = 0;

 if(dst!=((void*)0)) {
  if(uip_pbuf_header(p,UIP_IP_HLEN)) {
   UIP_ERROR("uip_ipoutput_if: not enough room for IP header in pbuf.\n");
   return UIP_ERR_BUF;
  }

  iphdr = p->payload;

  UIP_IPH_TTL_SET(iphdr,ttl);
  UIP_IPH_PROTO_SET(iphdr,proto);

  ip_addr_set(&iphdr->dst,dst);

  UIP_IPH_VHLTOS_SET(iphdr,4,(UIP_IP_HLEN/4),tos);
  UIP_IPH_LEN_SET(iphdr,htons(p->tot_len));
  UIP_IPH_OFFSET_SET(iphdr,htons(UIP_IP_DF));
  UIP_IPH_ID_SET(iphdr,htons(ip_id));
  ++ip_id;

  if(ip_addr_isany(src)) ip_addr_set(&iphdr->src,&netif->ip_addr);
  else ip_addr_set(&iphdr->src,src);

  UIP_IPH_CHKSUM_SET(iphdr,0);
  UIP_IPH_CHKSUM_SET(iphdr,uip_ipchksum(iphdr,UIP_IP_HLEN));
 } else {
  iphdr = p->payload;
  dst = &iphdr->dst;
 }




 return netif->output(netif,p,dst);
}
