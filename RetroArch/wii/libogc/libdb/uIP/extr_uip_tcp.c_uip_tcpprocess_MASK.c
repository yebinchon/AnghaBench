#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8_t ;
struct uip_tcpseg {struct uip_tcpseg* next; TYPE_1__* tcphdr; } ;
struct uip_tcp_pcb {int state; scalar_t__ snd_nxt; scalar_t__ rcv_nxt; scalar_t__ rcv_wnd; int /*<<< orphan*/  mss; int /*<<< orphan*/  cwnd; int /*<<< orphan*/  cb_arg; scalar_t__ (* accept ) (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ;scalar_t__ lastack; scalar_t__ (* connected ) (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ;struct uip_tcpseg* unacked; int /*<<< orphan*/  snd_queuelen; int /*<<< orphan*/  snd_wl1; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/  snd_buf; scalar_t__ keepcnt; int /*<<< orphan*/  tmr; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ s8_t ;
struct TYPE_6__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  wnd; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int UIP_CLOSED ; 
#define  UIP_CLOSE_WAIT 135 
#define  UIP_CLOSING 134 
 scalar_t__ UIP_ERR_ABRT ; 
 scalar_t__ UIP_ERR_OK ; 
 scalar_t__ UIP_ERR_RST ; 
#define  UIP_ESTABLISHED 133 
#define  UIP_FIN_WAIT_1 132 
#define  UIP_FIN_WAIT_2 131 
#define  UIP_LAST_ACK 130 
#define  UIP_SYN_RCVD 129 
#define  UIP_SYN_SENT 128 
 int UIP_TCP_ACK ; 
 int UIP_TCP_FIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uip_tcp_pcb*) ; 
 int UIP_TCP_RST ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int UIP_TCP_SYN ; 
 int /*<<< orphan*/  UIP_TF_ACK_DELAY ; 
 int /*<<< orphan*/  UIP_TF_CLOSED ; 
 int /*<<< orphan*/  UIP_TF_RESET ; 
 void* UIP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ; 
 scalar_t__ uip_ackno ; 
 int uip_flags ; 
 TYPE_3__* uip_iphdr ; 
 int /*<<< orphan*/  uip_recv_flags ; 
 scalar_t__ uip_seqno ; 
 int /*<<< orphan*/  FUNC6 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  uip_tcp_active_pcbs ; 
 int /*<<< orphan*/  FUNC9 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC10 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uip_tcp_ticks ; 
 int /*<<< orphan*/  uip_tcp_tw_pcbs ; 
 TYPE_2__* uip_tcphdr ; 
 scalar_t__ uip_tcplen ; 
 int /*<<< orphan*/  FUNC12 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC13 (struct uip_tcpseg*) ; 

__attribute__((used)) static s8_t FUNC14(struct uip_tcp_pcb *pcb)
{
	struct uip_tcpseg *rseg;
	u8_t acceptable = 0;
	s8_t err;

	err = 0;
	if(uip_flags&UIP_TCP_RST) {
		if(pcb->state==UIP_SYN_SENT) {
			if(uip_ackno==pcb->snd_nxt) acceptable = 1;
		} else {
			if(FUNC2(uip_seqno,pcb->rcv_nxt,pcb->rcv_nxt+pcb->rcv_wnd)) acceptable = 1;
		}
		if(acceptable) {
			uip_recv_flags = UIP_TF_RESET;
			pcb->flags &= ~UIP_TF_ACK_DELAY;
			return UIP_ERR_RST;
		} else
			return UIP_ERR_OK;
	}

	pcb->tmr = uip_tcp_ticks;
	pcb->keepcnt = 0;

	switch(pcb->state) {
		case UIP_SYN_SENT:
			if(uip_flags&UIP_TCP_ACK && uip_flags&UIP_TCP_SYN &&
				uip_ackno==FUNC3(pcb->unacked->tcphdr->seqno)+1) {
				pcb->snd_buf++;
				pcb->rcv_nxt = uip_seqno+1;
				pcb->lastack = uip_ackno;
				pcb->snd_wnd = uip_tcphdr->wnd;
				pcb->snd_wl1 = uip_seqno-1;
				pcb->state = UIP_ESTABLISHED;
				pcb->cwnd = pcb->mss;
				pcb->snd_queuelen--;

				rseg = pcb->unacked;
				pcb->unacked = rseg->next;
				FUNC13(rseg);

				FUNC9(pcb);

				if(pcb->connected!=NULL) err = pcb->connected(pcb->cb_arg,pcb,UIP_ERR_OK);

				FUNC7(pcb);
			} else if(uip_flags&UIP_TCP_ACK) {
				FUNC11(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);
			}
			break;
		case UIP_SYN_RCVD:
			if(uip_flags&UIP_TCP_ACK && !(uip_flags&UIP_TCP_RST)) {
				if(FUNC2(uip_ackno,pcb->lastack+1,pcb->snd_nxt)) {
					pcb->state = UIP_ESTABLISHED;

					if(pcb->accept!=NULL) err = pcb->accept(pcb->cb_arg,pcb,UIP_ERR_OK);
					if(err!=UIP_ERR_OK)	 {
						FUNC6(pcb);
						return UIP_ERR_ABRT;
					}
					FUNC12(pcb);
					pcb->cwnd = pcb->mss;
				} else {
					FUNC11(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);
				}
			}
			break;
		case UIP_CLOSE_WAIT:
		case UIP_ESTABLISHED:
			FUNC12(pcb);
			if(uip_flags&UIP_TCP_FIN) {
				FUNC8(pcb);
				pcb->state = UIP_CLOSE_WAIT;
			}
			break;
		case UIP_FIN_WAIT_1:
			FUNC12(pcb);
			if(uip_flags&UIP_TCP_FIN) {
				if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
					FUNC8(pcb);
					FUNC10(pcb);
					FUNC1(&uip_tcp_active_pcbs,pcb);
					pcb->state = UIP_TIME_WAIT;
					FUNC0(&uip_tcp_tw_pcbs,pcb);
				} else {
					FUNC8(pcb);
					pcb->state = UIP_CLOSING;
				}
			} else if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
				pcb->state = UIP_FIN_WAIT_2;
			}
			break;
		case UIP_FIN_WAIT_2:
			FUNC12(pcb);
			if(uip_flags&UIP_TCP_FIN) {
				FUNC8(pcb);
				FUNC10(pcb);
				FUNC1(&uip_tcp_active_pcbs,pcb);
				pcb->state = UIP_TIME_WAIT;
				FUNC0(&uip_tcp_tw_pcbs,pcb);
			}
			break;
		case UIP_CLOSING:
			FUNC12(pcb);
			if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
				FUNC8(pcb);
				FUNC10(pcb);
				FUNC1(&uip_tcp_active_pcbs,pcb);
				pcb->state = UIP_TIME_WAIT;
				FUNC0(&uip_tcp_tw_pcbs,pcb);
			}
			break;
		case UIP_LAST_ACK:
			FUNC12(pcb);
			if(uip_flags&UIP_TCP_ACK && uip_ackno==pcb->snd_nxt) {
				pcb->state = UIP_CLOSED;
				uip_recv_flags = UIP_TF_CLOSED;
			}
			break;
		default:
			break;

	}
	return UIP_ERR_OK;
}