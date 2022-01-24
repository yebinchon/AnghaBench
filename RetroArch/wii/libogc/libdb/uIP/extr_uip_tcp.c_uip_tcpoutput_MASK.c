#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32_t ;
struct uip_tcpseg {scalar_t__ len; struct uip_tcpseg* next; TYPE_1__* tcphdr; } ;
struct uip_tcp_pcb {int flags; scalar_t__ lastack; scalar_t__ snd_nxt; scalar_t__ rcv_nxt; scalar_t__ state; scalar_t__ snd_max; struct uip_tcpseg* unsent; struct uip_tcpseg* unacked; int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; int /*<<< orphan*/  remote_ip; int /*<<< orphan*/  local_ip; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  local_port; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  snd_wnd; } ;
struct uip_tcp_hdr {int /*<<< orphan*/  chksum; scalar_t__ urgp; void* wnd; void* ackno; void* seqno; void* dst; void* src; } ;
struct uip_pbuf {int /*<<< orphan*/  tot_len; struct uip_tcp_hdr* payload; } ;
typedef  int /*<<< orphan*/  s8_t ;
struct TYPE_2__ {int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UIP_ERR_BUF ; 
 int /*<<< orphan*/  UIP_ERR_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIP_PBUF_IP ; 
 int /*<<< orphan*/  UIP_PBUF_RAM ; 
 int /*<<< orphan*/  UIP_PROTO_TCP ; 
 scalar_t__ UIP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC2 (struct uip_tcp_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uip_tcp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIP_TCP_ACK ; 
 int /*<<< orphan*/  UIP_TCP_HLEN ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct uip_tcpseg*) ; 
 int UIP_TF_ACK_DELAY ; 
 int UIP_TF_ACK_NOW ; 
 void* FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uip_pbuf* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct uip_pbuf*) ; 
 struct uip_tcp_pcb* uip_tcp_input_pcb ; 
 int /*<<< orphan*/  FUNC14 (struct uip_tcpseg*,struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct uip_tcpseg*) ; 

s8_t FUNC16(struct uip_tcp_pcb *pcb)
{
	u32_t wnd;
	struct uip_pbuf *p;
	struct uip_tcp_hdr *tcphdr;
	struct uip_tcpseg *seg,*useg;

	if(uip_tcp_input_pcb==pcb) return 0;

	wnd = FUNC1(pcb->snd_wnd,pcb->cwnd);
	seg = pcb->unsent;
	useg = pcb->unacked;
	if(useg!=NULL) {
		for(;useg->next!=NULL;useg=useg->next);
	}

	if(pcb->flags&UIP_TF_ACK_NOW &&
		(seg==NULL || FUNC9(seg->tcphdr->seqno)-pcb->lastack+seg->len>wnd)) {
		//printf("uip_tcpout: ACK - seqno = %u, ackno = %u\n",pcb->snd_nxt,pcb->rcv_nxt);
		p = FUNC12(UIP_PBUF_IP,UIP_TCP_HLEN,UIP_PBUF_RAM);
		if(p==NULL) {
			FUNC0("uip_tcpoutput: (ACK) could not allocate pbuf.");
			return UIP_ERR_BUF;
		}
		pcb->flags &= ~(UIP_TF_ACK_DELAY|UIP_TF_ACK_NOW);

		tcphdr = p->payload;
		tcphdr->src	= FUNC8(pcb->local_port);
		tcphdr->dst = FUNC8(pcb->remote_port);
		tcphdr->seqno = FUNC7(pcb->snd_nxt);
		tcphdr->ackno = FUNC7(pcb->rcv_nxt);
		FUNC2(tcphdr,UIP_TCP_ACK);
		tcphdr->wnd = FUNC8(pcb->rcv_wnd);
		tcphdr->urgp = 0;
		FUNC3(tcphdr,5);

		tcphdr->chksum = 0;
		tcphdr->chksum = FUNC10(p,&pcb->local_ip,&pcb->remote_ip,UIP_PROTO_TCP,p->tot_len);

		FUNC11(p,&pcb->local_ip,&pcb->remote_ip,pcb->ttl,pcb->tos,UIP_PROTO_TCP);
		FUNC13(p);

		return UIP_ERR_OK;
	}

	while(seg!=NULL && FUNC9(seg->tcphdr->seqno)-pcb->lastack+seg->len<=wnd) {
		pcb->unsent = seg->next;
		if(pcb->state!=UIP_SYN_SENT) {
			FUNC4(seg->tcphdr,UIP_TCP_ACK);
			pcb->flags &= ~(UIP_TF_ACK_DELAY|UIP_TF_ACK_NOW);
		}

		FUNC14(seg,pcb);

		pcb->snd_nxt = FUNC9(seg->tcphdr->seqno)+FUNC6(seg);
		if(FUNC5(pcb->snd_max,pcb->snd_nxt)) pcb->snd_max = pcb->snd_nxt;

		if(FUNC6(seg)>0) {
			seg->next = NULL;
			if(pcb->unacked==NULL) {
				pcb->unacked = seg;
				useg = seg;
			} else {
				if(FUNC5(FUNC9(seg->tcphdr->seqno),FUNC9(useg->tcphdr->seqno))) {
					seg->next = pcb->unacked;
					pcb->unacked = seg;
				} else {
					useg->next = seg;
					useg = useg->next;
				}
			}
		} else
			FUNC15(seg);

		seg = pcb->unsent;
	}
	return UIP_ERR_OK;
}