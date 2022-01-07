
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8_t ;
struct pbuf {struct eth_hdr* payload; } ;
struct ip_addr {scalar_t__ addr; } ;
struct netif {size_t hwaddr_len; int (* linkoutput ) (struct netif*,struct pbuf*) ;scalar_t__ hwaddr; struct ip_addr gw; int netmask; int ip_addr; } ;
struct TYPE_5__ {int* addr; } ;
struct TYPE_4__ {int* addr; } ;
struct eth_hdr {int type; TYPE_2__ src; TYPE_1__ dest; } ;
struct eth_addr {int* addr; } ;
typedef int err_t ;
struct TYPE_6__ {int lenerr; } ;


 int DBG_TRACE ;
 int ERR_BUF ;
 int ERR_RTE ;
 int ETHARP_DEBUG ;
 int ETHTYPE_IP ;
 int LINK_STATS_INC (int ) ;
 int LWIP_DEBUGF (int,char*) ;
 int etharp_query (struct netif*,struct ip_addr*,struct pbuf*) ;
 int ethbroadcast ;
 int htons (int ) ;
 int ip4_addr2 (struct ip_addr*) ;
 int ip4_addr3 (struct ip_addr*) ;
 int ip4_addr4 (struct ip_addr*) ;
 scalar_t__ ip_addr_isbroadcast (struct ip_addr*,struct netif*) ;
 scalar_t__ ip_addr_ismulticast (struct ip_addr*) ;
 int ip_addr_netcmp (struct ip_addr*,int *,int *) ;
 TYPE_3__ link ;
 scalar_t__ pbuf_header (struct pbuf*,int) ;
 int stub1 (struct netif*,struct pbuf*) ;

err_t
etharp_output(struct netif *netif, struct ip_addr *ipaddr, struct pbuf *q)
{
  struct eth_addr *dest, *srcaddr, mcastaddr;
  struct eth_hdr *ethhdr;
  u8_t i;


  if (pbuf_header(q, sizeof(struct eth_hdr)) != 0) {

    LWIP_DEBUGF(ETHARP_DEBUG | DBG_TRACE | 2, ("etharp_output: could not allocate room for header.\n"));
    LINK_STATS_INC(link.lenerr);
    return ERR_BUF;
  }


  dest = ((void*)0);




  if (ip_addr_isbroadcast(ipaddr, netif)) {

    dest = (struct eth_addr *)&ethbroadcast;

  } else if (ip_addr_ismulticast(ipaddr)) {

    mcastaddr.addr[0] = 0x01;
    mcastaddr.addr[1] = 0x00;
    mcastaddr.addr[2] = 0x5e;
    mcastaddr.addr[3] = ip4_addr2(ipaddr) & 0x7f;
    mcastaddr.addr[4] = ip4_addr3(ipaddr);
    mcastaddr.addr[5] = ip4_addr4(ipaddr);

    dest = &mcastaddr;

  } else {

    if (!ip_addr_netcmp(ipaddr, &(netif->ip_addr), &(netif->netmask))) {

      if (netif->gw.addr != 0) {

        ipaddr = &(netif->gw);

      } else {

        return ERR_RTE;
      }
    }

    return etharp_query(netif, ipaddr, q);
  }



  srcaddr = (struct eth_addr *)netif->hwaddr;
  ethhdr = q->payload;
  for (i = 0; i < netif->hwaddr_len; i++) {
    ethhdr->dest.addr[i] = dest->addr[i];
    ethhdr->src.addr[i] = srcaddr->addr[i];
  }
  ethhdr->type = htons(ETHTYPE_IP);

  return netif->linkoutput(netif, q);
}
