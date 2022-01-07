
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pbuf {struct ethip_hdr* payload; } ;
struct netif {int netmask; int ip_addr; } ;
struct TYPE_3__ {int src; } ;
struct TYPE_4__ {int src; } ;
struct ethip_hdr {TYPE_1__ eth; TYPE_2__ ip; } ;


 int DBG_TRACE ;
 int ETHARP_DEBUG ;
 int LWIP_ASSERT (char*,int ) ;
 int LWIP_DEBUGF (int,char*) ;
 int ip_addr_netcmp (int *,int *,int *) ;
 int update_arp_entry (struct netif*,int *,int *,int ) ;

void
etharp_ip_input(struct netif *netif, struct pbuf *p)
{
  struct ethip_hdr *hdr;
  LWIP_ASSERT("netif != NULL", netif != ((void*)0));


  hdr = p->payload;

  if (!ip_addr_netcmp(&(hdr->ip.src), &(netif->ip_addr), &(netif->netmask))) {

    return;
  }

  LWIP_DEBUGF(ETHARP_DEBUG | DBG_TRACE, ("etharp_ip_input: updating ETHARP table.\n"));



  update_arp_entry(netif, &(hdr->ip.src), &(hdr->eth.src), 0);
}
