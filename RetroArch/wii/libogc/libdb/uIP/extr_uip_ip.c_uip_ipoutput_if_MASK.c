#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u16_t ;
struct uip_pbuf {scalar_t__ tot_len; struct uip_ip_hdr* payload; } ;
struct uip_ip_addr {int dummy; } ;
struct uip_netif {scalar_t__ mtu; int /*<<< orphan*/  (* output ) (struct uip_netif*,struct uip_pbuf*,struct uip_ip_addr*) ;struct uip_ip_addr ip_addr; } ;
struct uip_ip_hdr {struct uip_ip_addr dst; struct uip_ip_addr src; } ;
typedef  int /*<<< orphan*/  s8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_ERR_BUF ; 
 int /*<<< orphan*/  FUNC1 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_ip_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_ip_hdr*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ UIP_IP_DF ; 
 int UIP_IP_HLEN ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (struct uip_ip_addr*) ; 
 int /*<<< orphan*/  FUNC10 (struct uip_ip_addr*,struct uip_ip_addr*) ; 
 int /*<<< orphan*/  FUNC11 (struct uip_netif*,struct uip_pbuf*,struct uip_ip_addr*) ; 
 int /*<<< orphan*/  FUNC12 (struct uip_ip_hdr*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct uip_pbuf*,struct uip_netif*,struct uip_ip_addr*) ; 
 scalar_t__ FUNC14 (struct uip_pbuf*,int) ; 

s8_t FUNC15(struct uip_pbuf *p,struct uip_ip_addr *src,struct uip_ip_addr *dst,u8_t ttl,u8_t tos,u8_t proto,struct uip_netif *netif)
{
	struct uip_ip_hdr *iphdr = NULL;
	u16_t ip_id = 0;

	if(dst!=NULL) {
		if(FUNC14(p,UIP_IP_HLEN)) {
			FUNC0("uip_ipoutput_if: not enough room for IP header in pbuf.\n");
			return UIP_ERR_BUF;
		}

		iphdr = p->payload;

		FUNC6(iphdr,ttl);
		FUNC5(iphdr,proto);

		FUNC10(&iphdr->dst,dst);

		FUNC7(iphdr,4,(UIP_IP_HLEN/4),tos);
		FUNC3(iphdr,FUNC8(p->tot_len));
		FUNC4(iphdr,FUNC8(UIP_IP_DF));
		FUNC2(iphdr,FUNC8(ip_id));
		++ip_id;

		if(FUNC9(src)) FUNC10(&iphdr->src,&netif->ip_addr);
		else FUNC10(&iphdr->src,src);

		FUNC1(iphdr,0);
		FUNC1(iphdr,FUNC12(iphdr,UIP_IP_HLEN));
	} else {
		iphdr = p->payload;
		dst = &iphdr->dst;
	}
#if UIP_IP_FRAG
	if(netif->mtu && p->tot_len>netif->mtu)
		return uip_ipfrag(p,netif,dst);
#endif
	return netif->output(netif,p,dst);
}