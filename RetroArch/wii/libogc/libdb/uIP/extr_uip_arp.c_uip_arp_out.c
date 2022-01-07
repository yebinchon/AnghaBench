
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8_t ;
struct uip_pbuf {struct uip_eth_hdr* payload; } ;
struct uip_ip_addr {scalar_t__ addr; } ;
struct uip_netif {size_t hwaddr_len; int (* linkoutput ) (struct uip_netif*,struct uip_pbuf*) ;scalar_t__ hwaddr; struct uip_ip_addr gw; int netmask; int ip_addr; } ;
struct TYPE_4__ {int* addr; } ;
struct TYPE_3__ {int* addr; } ;
struct uip_eth_hdr {int type; TYPE_2__ src; TYPE_1__ dest; } ;
struct uip_eth_addr {int* addr; } ;
typedef int s8_t ;


 int UIP_ERR_BUF ;
 int UIP_ERR_RTE ;
 int UIP_ETHTYPE_IP ;
 int UIP_LOG (char*) ;
 int ethbroadcast ;
 int htons (int ) ;
 int ip4_addr2 (struct uip_ip_addr*) ;
 int ip4_addr3 (struct uip_ip_addr*) ;
 int ip4_addr4 (struct uip_ip_addr*) ;
 scalar_t__ ip_addr_isbroadcast (struct uip_ip_addr*,struct uip_netif*) ;
 scalar_t__ ip_addr_ismulticast (struct uip_ip_addr*) ;
 int ip_addr_netcmp (struct uip_ip_addr*,int *,int *) ;
 int stub1 (struct uip_netif*,struct uip_pbuf*) ;
 int uip_arp_arpquery (struct uip_netif*,struct uip_ip_addr*,struct uip_pbuf*) ;
 scalar_t__ uip_pbuf_header (struct uip_pbuf*,int) ;

s8_t uip_arp_out(struct uip_netif *netif,struct uip_ip_addr *ipaddr,struct uip_pbuf *q)
{
 u8_t i;
 struct uip_eth_addr *dest,*srcaddr,mcastaddr;
 struct uip_eth_hdr *ethhdr;

 if(uip_pbuf_header(q,sizeof(struct uip_eth_hdr))!=0) {
  UIP_LOG("uip_arp_out: could not allocate room for header.\n");
  return UIP_ERR_BUF;
 }

 dest = ((void*)0);
 if(ip_addr_isbroadcast(ipaddr,netif)) {
  dest = (struct uip_eth_addr*)&ethbroadcast;
 } else if(ip_addr_ismulticast(ipaddr)) {

  mcastaddr.addr[0] = 0x01;
  mcastaddr.addr[1] = 0x00;
  mcastaddr.addr[2] = 0x5e;
  mcastaddr.addr[3] = ip4_addr2(ipaddr) & 0x7f;
  mcastaddr.addr[4] = ip4_addr3(ipaddr);
  mcastaddr.addr[5] = ip4_addr4(ipaddr);

    dest = &mcastaddr;
 } else {
  if(!ip_addr_netcmp(ipaddr,&netif->ip_addr,&netif->netmask)) {
   if(netif->gw.addr!=0) ipaddr = &netif->gw;
   else return UIP_ERR_RTE;
  }
  return uip_arp_arpquery(netif,ipaddr,q);
 }

 srcaddr = (struct uip_eth_addr*)netif->hwaddr;
 ethhdr = q->payload;
 for(i=0;i<netif->hwaddr_len;i++) {
  ethhdr->dest.addr[i] = dest->addr[i];
  ethhdr->src.addr[i] = srcaddr->addr[i];
 }

 ethhdr->type = htons(UIP_ETHTYPE_IP);
 return netif->linkoutput(netif,q);
}
