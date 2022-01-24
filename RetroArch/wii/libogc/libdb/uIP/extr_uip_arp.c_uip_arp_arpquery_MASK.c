#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uip_pbuf {struct uip_eth_hdr* payload; } ;
struct uip_netif {size_t hwaddr_len; size_t (* linkoutput ) (struct uip_netif*,struct uip_pbuf*) ;scalar_t__ hwaddr; } ;
struct uip_ip_addr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * addr; } ;
struct uip_eth_hdr {int /*<<< orphan*/  type; TYPE_3__ src; TYPE_1__ dest; } ;
struct uip_eth_addr {int /*<<< orphan*/ * addr; } ;
typedef  size_t s8_t ;
struct TYPE_6__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_8__ {scalar_t__ state; TYPE_2__ ethaddr; } ;

/* Variables and functions */
 scalar_t__ ARP_STATE_EMPTY ; 
 scalar_t__ ARP_STATE_PENDING ; 
 scalar_t__ ARP_STATE_STABLE ; 
 int /*<<< orphan*/  ARP_TRY_HARD ; 
 size_t UIP_ERR_ARG ; 
 size_t UIP_ERR_MEM ; 
 int /*<<< orphan*/  UIP_ETHTYPE_IP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* arp_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct uip_ip_addr*) ; 
 scalar_t__ FUNC3 (struct uip_ip_addr*,struct uip_netif*) ; 
 scalar_t__ FUNC4 (struct uip_ip_addr*) ; 
 size_t FUNC5 (struct uip_netif*,struct uip_pbuf*) ; 
 size_t FUNC6 (struct uip_netif*,struct uip_ip_addr*) ; 
 size_t FUNC7 (struct uip_ip_addr*,int /*<<< orphan*/ ) ; 

s8_t FUNC8(struct uip_netif *netif,struct uip_ip_addr *ipaddr,struct uip_pbuf *q)
{
	s8_t i,k;
	s8_t err = UIP_ERR_MEM;
	struct uip_eth_addr *srcaddr = (struct uip_eth_addr*)netif->hwaddr;

	if(FUNC3(ipaddr,netif) ||
		FUNC4(ipaddr) ||
		FUNC2(ipaddr)) return UIP_ERR_ARG;

	i = FUNC7(ipaddr,ARP_TRY_HARD);
	if(i<0) return i;

	if(arp_table[i].state==ARP_STATE_EMPTY) arp_table[i].state = ARP_STATE_PENDING;
	if(arp_table[i].state==ARP_STATE_PENDING || q==NULL) err = FUNC6(netif,ipaddr);

	if(q!=NULL) {
		if(arp_table[i].state==ARP_STATE_STABLE) {

			struct uip_eth_hdr *hdr = q->payload;
			for(k=0;k<netif->hwaddr_len;k++) {
				hdr->dest.addr[k] = arp_table[i].ethaddr.addr[k];
				hdr->src.addr[k] = srcaddr->addr[k];
			}

			hdr->type = FUNC1(UIP_ETHTYPE_IP);
			err = netif->linkoutput(netif,q);
		} else if(arp_table[i].state==ARP_STATE_PENDING) {
			FUNC0("uip_arp_query: Ethernet destination address unknown, queueing disabled, packet dropped.\n");
		}
	}
	return err;
}