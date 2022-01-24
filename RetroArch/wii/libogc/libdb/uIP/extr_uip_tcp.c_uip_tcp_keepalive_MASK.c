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
struct uip_tcp_pcb {int /*<<< orphan*/  ttl; int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  local_ip; int /*<<< orphan*/  rcv_wnd; scalar_t__ rcv_nxt; scalar_t__ snd_nxt; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  local_port; } ;
struct uip_tcp_hdr {scalar_t__ chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int /*<<< orphan*/  tot_len; struct uip_tcp_hdr* payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  UIP_PBUF_IP ; 
 int /*<<< orphan*/  UIP_PBUF_RAM ; 
 int /*<<< orphan*/  UIP_PROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (struct uip_tcp_hdr*,int) ; 
 int /*<<< orphan*/  UIP_TCP_HLEN ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uip_pbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_pbuf*) ; 

void FUNC7(struct uip_tcp_pcb *pcb)
{
	struct uip_pbuf *p;
	struct uip_tcp_hdr *tcphdr;

	p = FUNC5(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
	if(p==NULL) return;

	tcphdr = p->payload;
	tcphdr->src = FUNC2(pcb->local_port);
	tcphdr->dst = FUNC2(pcb->remote_port);
	tcphdr->seqno = FUNC1(pcb->snd_nxt-1);
	tcphdr->ackno = FUNC1(pcb->rcv_nxt);
	tcphdr->wnd = FUNC2(pcb->rcv_wnd);
	tcphdr->urgp = 0;
	FUNC0(tcphdr,5);

	tcphdr->chksum = 0;
	tcphdr->chksum = FUNC3(p,&pcb->local_ip,&pcb->remote_ip,UIP_PROTO_TCP,p->tot_len);

	FUNC4(p,&pcb->local_ip,&pcb->remote_ip,pcb->ttl,0,UIP_PROTO_TCP);
	FUNC6(p);
}