#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8_t ;
struct uip_pbuf {int tot_len; struct uip_arp_hdr* payload; } ;
struct TYPE_12__ {scalar_t__ addr; } ;
struct uip_netif {size_t hwaddr_len; int /*<<< orphan*/  (* linkoutput ) (struct uip_netif*,struct uip_pbuf*) ;TYPE_6__ ip_addr; } ;
struct uip_ip_addr2 {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
struct uip_eth_addr {int /*<<< orphan*/ * addr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_7__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_10__ {TYPE_3__ src; TYPE_1__ dest; } ;
struct TYPE_8__ {int /*<<< orphan*/ * addr; } ;
struct TYPE_11__ {int /*<<< orphan*/ * addr; } ;
struct uip_arp_hdr {int opcode; int hwtype; int protocol; TYPE_4__ ethhdr; TYPE_2__ dhwaddr; TYPE_5__ shwaddr; struct uip_ip_addr2 sipaddr; struct uip_ip_addr2 dipaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uip_arp_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct uip_arp_hdr*,int) ; 
 int ARP_HWTYPE_ETH ; 
#define  ARP_REPLY 129 
#define  ARP_REQUEST 128 
 int /*<<< orphan*/  ARP_TRY_HARD ; 
 int UIP_ETHTYPE_IP ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 size_t FUNC4 (struct uip_ip_addr*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (struct uip_netif*,struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_netif*,struct uip_ip_addr*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_pbuf*) ; 

void
FUNC8(struct uip_netif *netif,struct uip_eth_addr *ethaddr,struct uip_pbuf *p)
{
	u8_t i,for_us;
	struct uip_ip_addr sipaddr,dipaddr;
	struct uip_arp_hdr *hdr;

	if(p->tot_len<sizeof(struct uip_arp_hdr)) {
		FUNC7(p);
		return;
	}

	hdr = p->payload;

	*(struct uip_ip_addr2*)((void*)&sipaddr) = hdr->sipaddr;
	*(struct uip_ip_addr2*)((void*)&dipaddr) = hdr->dipaddr;

	if(netif->ip_addr.addr==0) for_us = 0;
	else for_us = FUNC4(&dipaddr,&netif->ip_addr);

	if(for_us) FUNC6(netif,&sipaddr,&hdr->shwaddr,ARP_TRY_HARD);
	else FUNC6(netif,&sipaddr,&hdr->shwaddr,0);

	switch(FUNC3(hdr->opcode)) {
		case ARP_REQUEST:
			if(for_us) {
				hdr->opcode = FUNC3(ARP_REPLY);
				hdr->dipaddr = hdr->sipaddr;
				hdr->sipaddr = *(struct uip_ip_addr2*)((void*)&netif->ip_addr);

				for(i=0;i<netif->hwaddr_len;i++) {
					hdr->dhwaddr.addr[i] = hdr->shwaddr.addr[i];
					hdr->shwaddr.addr[i] = ethaddr->addr[i];
					hdr->ethhdr.dest.addr[i] = hdr->dhwaddr.addr[i];
					hdr->ethhdr.src.addr[i] = ethaddr->addr[i];
				}

				hdr->hwtype = FUNC3(ARP_HWTYPE_ETH);
				FUNC0(hdr,netif->hwaddr_len);

				hdr->protocol = FUNC3(UIP_ETHTYPE_IP);
				FUNC1(hdr,sizeof(struct uip_ip_addr));

				netif->linkoutput(netif,p);
			} else {
				FUNC2("uip_arp_arpin: ip packet not for us.\n");
			}
			break;
		case ARP_REPLY:
			break;
		default:
			FUNC2("uip_arp_arpin: ARP unknown opcode type.\n");
			break;
	}
	FUNC7(p);
}