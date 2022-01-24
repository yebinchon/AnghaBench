#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8_t ;
typedef  int u16_t ;
struct uip_pbuf {int tot_len; struct uip_ip_hdr* payload; } ;
struct uip_netif {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct uip_ip_hdr {TYPE_1__ src; int /*<<< orphan*/  chksum; TYPE_2__ dst; } ;
struct uip_ip_addr {int /*<<< orphan*/  addr; } ;
struct uip_icmp_echo_hdr {TYPE_1__ src; int /*<<< orphan*/  chksum; TYPE_2__ dst; } ;
typedef  int s16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
#define  UIP_ICMP_ECHO 128 
 int /*<<< orphan*/  UIP_ICMP_ER ; 
 int FUNC1 (struct uip_ip_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_ip_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  UIP_PROTO_ICMP ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct uip_pbuf*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC9 (struct uip_pbuf*) ; 
 scalar_t__ FUNC10 (struct uip_pbuf*,int) ; 

void FUNC11(struct uip_pbuf *p,struct uip_netif *inp)
{
	u8_t type;
	u16_t hlen;
	struct uip_ip_addr tmpaddr;
	struct uip_ip_hdr *iphdr;
	struct uip_icmp_echo_hdr *iecho;

	iphdr = p->payload;
	hlen = FUNC1(iphdr)*4;
	if(FUNC10(p,-((s16_t)hlen)) || p->tot_len<sizeof(u16_t)*2) {
		FUNC3("uip_icmpinput: short ICMP received.\n");
		FUNC9(p);
		return;
	}

	type = *((u8_t*)p->payload);
	//code = *((u8_t*)p->payload+1);
	switch(type) {
		case UIP_ICMP_ECHO:
			if(FUNC5(&iphdr->dst,inp) || FUNC6(&iphdr->dst)) {
				FUNC3("uip_icmpinput: Not echoing to broadcast pings.\n");
				FUNC9(p);
				return;
			}

			if(p->tot_len<sizeof(struct uip_icmp_echo_hdr)) {
				FUNC3("uip_icmpinput: bad ICMP echo received.\n");
				FUNC9(p);
				return;
			}

			iecho = p->payload;
			if(FUNC7(p)!=0) {
				FUNC3("uip_icmpinput: checksum failed for received ICMP echo.\n");
				FUNC9(p);
				return;
			}

			tmpaddr.addr = iphdr->src.addr;
			iphdr->src.addr = iphdr->dst.addr;
			iphdr->dst.addr = tmpaddr.addr;
			FUNC0(iecho,UIP_ICMP_ER);

			if(iecho->chksum>=FUNC4(0xffff-(UIP_ICMP_ECHO<<8))) iecho->chksum += FUNC4(UIP_ICMP_ECHO<<8)+1;
			else iecho->chksum += FUNC4(UIP_ICMP_ECHO<<8);

			FUNC10(p,hlen);
			FUNC8(p,&iphdr->src,NULL,FUNC2(iphdr),0,UIP_PROTO_ICMP,inp);
			break;
		default:
			FUNC3("uip_icmpinput: ICMP type/code not supported.\n");
			break;
	}
	FUNC9(p);
}