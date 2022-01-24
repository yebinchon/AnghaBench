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
typedef  int /*<<< orphan*/  u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct uip_tcp_hdr {scalar_t__ chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int /*<<< orphan*/  tot_len; struct uip_tcp_hdr* payload; } ;
struct uip_ip_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_PBUF_IP ; 
 int /*<<< orphan*/  UIP_PBUF_RAM ; 
 int /*<<< orphan*/  UIP_PROTO_TCP ; 
 int /*<<< orphan*/  FUNC1 (struct uip_tcp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uip_tcp_hdr*,int) ; 
 int UIP_TCP_ACK ; 
 int /*<<< orphan*/  UIP_TCP_HLEN ; 
 int UIP_TCP_RST ; 
 int /*<<< orphan*/  UIP_TCP_TTL ; 
 int /*<<< orphan*/  UIP_TCP_WND ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_pbuf*,struct uip_ip_addr*,struct uip_ip_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uip_pbuf* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uip_pbuf*) ; 

void FUNC9(u32_t seqno,u32_t ackno,struct uip_ip_addr *lipaddr,struct uip_ip_addr *ripaddr,u16_t lport,u16_t rport)
{
	struct uip_pbuf *p;
	struct uip_tcp_hdr *tcphdr;

	p = FUNC7(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
	if(p==NULL) {
		FUNC0("uip_tcp_rst: could not allocate memory for pbuf.\n");
		return;
	}

	tcphdr = p->payload;
	tcphdr->src = FUNC4(lport);
	tcphdr->dst = FUNC4(rport);
	tcphdr->seqno = FUNC3(seqno);
	tcphdr->ackno = FUNC3(ackno);
	FUNC1(tcphdr,UIP_TCP_RST|UIP_TCP_ACK);
	tcphdr->wnd = FUNC4(UIP_TCP_WND);
	tcphdr->urgp = 0;
	FUNC2(tcphdr,5);

	tcphdr->chksum = 0;
	tcphdr->chksum = FUNC5(p,lipaddr,ripaddr,UIP_PROTO_TCP,p->tot_len);

	FUNC6(p,lipaddr,ripaddr,UIP_TCP_TTL,0,UIP_PROTO_TCP);
	FUNC8(p);
}