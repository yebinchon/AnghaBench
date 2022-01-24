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
typedef  int u16_t ;
struct uip_pbuf {int len; struct uip_ip_hdr* payload; } ;
struct uip_netif {int /*<<< orphan*/  ip_addr; struct uip_netif* next; } ;
struct uip_ip_hdr {int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  s8_t ;
struct TYPE_3__ {int /*<<< orphan*/  drop; int /*<<< orphan*/  chkerr; } ;
struct TYPE_4__ {TYPE_1__ ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 int /*<<< orphan*/  UIP_ICMP_DUR_PROTO ; 
 int FUNC1 (struct uip_ip_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_ip_hdr*) ; 
 int FUNC3 (struct uip_ip_hdr*) ; 
 int FUNC4 (struct uip_ip_hdr*) ; 
 int FUNC5 (struct uip_ip_hdr*) ; 
 int UIP_IP_MF ; 
 int UIP_IP_OFFMASK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
#define  UIP_PROTO_ICMP 129 
#define  UIP_PROTO_TCP 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct uip_pbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct uip_pbuf*,struct uip_netif*) ; 
 scalar_t__ FUNC16 (struct uip_ip_hdr*,int) ; 
 struct uip_pbuf* FUNC17 (struct uip_pbuf*) ; 
 scalar_t__ FUNC18 (struct uip_netif*) ; 
 struct uip_netif* uip_netif_list ; 
 int /*<<< orphan*/  FUNC19 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct uip_pbuf*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uip_stat ; 
 int /*<<< orphan*/  FUNC21 (struct uip_pbuf*,struct uip_netif*) ; 

s8_t FUNC22(struct uip_pbuf *p,struct uip_netif *inp)
{
	u16_t iphdr_len;
	struct uip_ip_hdr *iphdr;
	struct uip_netif *netif;

	iphdr = p->payload;
	if(FUNC5(iphdr)!=4) {
		FUNC0("uip_ipinput: ip packet dropped due to bad version number.\n");
		FUNC19(p);
		return 0;
	}

	iphdr_len = FUNC1(iphdr);
	iphdr_len *= 4;

	if(iphdr_len>p->len) {
		FUNC0("uip_ipinput: ip packet dropped due to too small packet size.\n");
		FUNC19(p);
		return 0;
	}

	if(FUNC16(iphdr,iphdr_len)!=0) {
	    FUNC7(++uip_stat.ip.drop);
	    FUNC7(++uip_stat.ip.chkerr);
		FUNC0("uip_ipinput: bad checksum.\n");
		FUNC19(p);
		return 0;
	}

	FUNC20(p,FUNC13(FUNC2(iphdr)));

	for(netif=uip_netif_list;netif!=NULL;netif=netif->next) {
		if(FUNC18(netif) && !FUNC10(&netif->ip_addr)) {
			if(FUNC9(&iphdr->dst,&netif->ip_addr) ||
				FUNC11(&iphdr->dst,netif)) break;
		}
	}

	if(!netif) {
		FUNC0("uip_ipinput: no route found.\n");
		FUNC19(p);
		return 0;
	}

	if((FUNC3(iphdr)&FUNC8(UIP_IP_OFFMASK|UIP_IP_MF))!=0) {
#if UIP_IP_REASSEMBLY
		p = uip_ipreass(p);
		if(p==NULL) return UIP_ERR_OK;

		iphdr = (struct uip_ip_hdr*)p->payload;
#else
		FUNC19(p);
	    FUNC7(++uip_stat.ip.drop);
		FUNC0("ip: fragment dropped.\n");
		return 0;
#endif
	}

	switch(FUNC4(iphdr)) {
		case UIP_PROTO_TCP:
			FUNC21(p,inp);
			break;
		case UIP_PROTO_ICMP:
			FUNC15(p,inp);
			break;
		default:
			FUNC6("uip_ipinput: Unsupported protocol.\n");
			if(!FUNC11(&(iphdr->dst),inp)
				&& !FUNC12(&(iphdr->dst))) {
				p->payload = iphdr;
				FUNC14(p,UIP_ICMP_DUR_PROTO);
			}
			FUNC19(p);
			break;
	}
	return 0;
}