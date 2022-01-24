#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8_t ;
struct uip_pbuf {struct uip_eth_hdr* payload; } ;
struct uip_ip_addr {scalar_t__ addr; } ;
struct uip_netif {size_t hwaddr_len; int /*<<< orphan*/  (* linkoutput ) (struct uip_netif*,struct uip_pbuf*) ;scalar_t__ hwaddr; struct uip_ip_addr gw; int /*<<< orphan*/  netmask; int /*<<< orphan*/  ip_addr; } ;
struct TYPE_4__ {int* addr; } ;
struct TYPE_3__ {int* addr; } ;
struct uip_eth_hdr {int /*<<< orphan*/  type; TYPE_2__ src; TYPE_1__ dest; } ;
struct uip_eth_addr {int* addr; } ;
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 int /*<<< orphan*/  UIP_ERR_BUF ; 
 int /*<<< orphan*/  UIP_ERR_RTE ; 
 int /*<<< orphan*/  UIP_ETHTYPE_IP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ethbroadcast ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uip_ip_addr*) ; 
 int FUNC3 (struct uip_ip_addr*) ; 
 int FUNC4 (struct uip_ip_addr*) ; 
 scalar_t__ FUNC5 (struct uip_ip_addr*,struct uip_netif*) ; 
 scalar_t__ FUNC6 (struct uip_ip_addr*) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_ip_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uip_netif*,struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct uip_netif*,struct uip_ip_addr*,struct uip_pbuf*) ; 
 scalar_t__ FUNC10 (struct uip_pbuf*,int) ; 

s8_t FUNC11(struct uip_netif *netif,struct uip_ip_addr *ipaddr,struct uip_pbuf *q)
{
	u8_t i;
	struct uip_eth_addr *dest,*srcaddr,mcastaddr;
	struct uip_eth_hdr *ethhdr;

	if(FUNC10(q,sizeof(struct uip_eth_hdr))!=0) {
		FUNC0("uip_arp_out: could not allocate room for header.\n");
		return UIP_ERR_BUF;
	}

	dest = NULL;
	if(FUNC5(ipaddr,netif)) {
		dest = (struct uip_eth_addr*)&ethbroadcast;
	} else if(FUNC6(ipaddr)) {
		/* Hash IP multicast address to MAC address.*/
		mcastaddr.addr[0] = 0x01;
		mcastaddr.addr[1] = 0x00;
		mcastaddr.addr[2] = 0x5e;
		mcastaddr.addr[3] = FUNC2(ipaddr) & 0x7f;
		mcastaddr.addr[4] = FUNC3(ipaddr);
		mcastaddr.addr[5] = FUNC4(ipaddr);
		/* destination Ethernet address is multicast */
	   dest = &mcastaddr;
	} else {
		if(!FUNC7(ipaddr,&netif->ip_addr,&netif->netmask)) {
			if(netif->gw.addr!=0) ipaddr = &netif->gw;
			else return UIP_ERR_RTE;
		}
		return FUNC9(netif,ipaddr,q);
	}

	srcaddr = (struct uip_eth_addr*)netif->hwaddr;
	ethhdr = q->payload;
	for(i=0;i<netif->hwaddr_len;i++) {
		ethhdr->dest.addr[i] = dest->addr[i];
		ethhdr->src.addr[i] = srcaddr->addr[i];
	}

	ethhdr->type = FUNC1(UIP_ETHTYPE_IP);
	return netif->linkoutput(netif,q);
}