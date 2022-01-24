#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8_t ;
struct uip_tcp_pcb_listen {scalar_t__ local_port; struct uip_tcp_pcb_listen* next; int /*<<< orphan*/  local_ip; } ;
struct uip_tcp_pcb {scalar_t__ state; scalar_t__ remote_port; scalar_t__ local_port; scalar_t__ acked; scalar_t__ (* sent ) (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ;scalar_t__ (* recv ) (int /*<<< orphan*/ ,struct uip_tcp_pcb*,int /*<<< orphan*/ *,scalar_t__) ;int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* errf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  local_ip; int /*<<< orphan*/  remote_ip; struct uip_tcp_pcb* next; } ;
struct uip_tcp_hdr {scalar_t__ src; scalar_t__ dst; scalar_t__ wnd; void* ackno; void* seqno; } ;
struct uip_pbuf {int tot_len; TYPE_2__* payload; } ;
struct uip_netif {int dummy; } ;
typedef  scalar_t__ s8_t ;
typedef  int s16_t ;
struct TYPE_7__ {int len; struct uip_pbuf* p; struct uip_tcp_hdr* tcphdr; TYPE_2__* dataptr; int /*<<< orphan*/ * next; } ;
struct TYPE_6__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_5__ {struct uip_tcp_pcb_listen* listen_pcbs; } ;

/* Variables and functions */
 scalar_t__ UIP_CLOSED ; 
 scalar_t__ UIP_ERR_ABRT ; 
 scalar_t__ UIP_ERR_OK ; 
 int /*<<< orphan*/  UIP_ERR_RST ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ UIP_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  UIP_PROTO_TCP ; 
 int FUNC2 (struct uip_tcp_hdr*) ; 
 int FUNC3 (struct uip_tcp_hdr*) ; 
 int UIP_TCP_FIN ; 
 int UIP_TCP_FLAGS ; 
 int UIP_TCP_RST ; 
 int UIP_TCP_SYN ; 
 int UIP_TF_CLOSED ; 
 int UIP_TF_RESET ; 
 scalar_t__ UIP_TIME_WAIT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct uip_netif*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct uip_tcp_pcb*) ; 
 void* FUNC9 (void*) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct uip_tcp_pcb*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct uip_tcp_pcb*,int /*<<< orphan*/ *,scalar_t__) ; 
 void* uip_ackno ; 
 scalar_t__ FUNC14 (struct uip_pbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int uip_flags ; 
 TYPE_3__ uip_inseg ; 
 TYPE_2__* uip_iphdr ; 
 int /*<<< orphan*/  FUNC15 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct uip_pbuf*,int) ; 
 int /*<<< orphan*/ * uip_recv_data ; 
 int uip_recv_flags ; 
 void* uip_seqno ; 
 struct uip_tcp_pcb* uip_tcp_active_pcbs ; 
 struct uip_tcp_pcb* uip_tcp_input_pcb ; 
 TYPE_1__ uip_tcp_listen_pcbs ; 
 int /*<<< orphan*/  FUNC17 (struct uip_tcp_pcb**,struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  uip_tcp_pcbs ; 
 int /*<<< orphan*/  FUNC18 (void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct uip_tcp_pcb* uip_tcp_tw_pcbs ; 
 struct uip_tcp_hdr* uip_tcphdr ; 
 int /*<<< orphan*/  FUNC19 (struct uip_tcp_pcb_listen*) ; 
 int /*<<< orphan*/  FUNC20 (struct uip_tcp_pcb*) ; 
 int uip_tcplen ; 
 int /*<<< orphan*/  FUNC21 (struct uip_tcp_pcb*) ; 
 scalar_t__ FUNC22 (struct uip_tcp_pcb*) ; 

void FUNC23(struct uip_pbuf *p,struct uip_netif *inp)
{
	s8_t err;
	u8_t hdr_len;
	struct uip_tcp_pcb *pcb,*prev;
	struct uip_tcp_pcb_listen *lpcb;

	uip_iphdr = p->payload;
	uip_tcphdr = (struct uip_tcp_hdr*)((u8_t*)p->payload+FUNC0(uip_iphdr)*4);

	if(FUNC16(p,-((s16_t)(FUNC0(uip_iphdr)*4))) || p->tot_len<sizeof(struct uip_tcp_hdr)) {
		FUNC1("uip_tcpinput: short packet discarded.");
		FUNC15(p);
		return;
	}
	if(FUNC6(&uip_iphdr->dst,inp) ||
		FUNC7(&uip_iphdr->dst)) {
		FUNC15(p);
		return;
	}

	if(FUNC14(p,&uip_iphdr->src,&uip_iphdr->dst,UIP_PROTO_TCP,p->tot_len)!=0) {
		FUNC1("uip_tcpinput: packet discarded due to failing checksum.");
		FUNC15(p);
		return;
	}

	hdr_len = FUNC3(uip_tcphdr);
	FUNC16(p,-(hdr_len*4));

	uip_tcphdr->src = FUNC10(uip_tcphdr->src);
	uip_tcphdr->dst = FUNC10(uip_tcphdr->dst);
	uip_seqno = uip_tcphdr->seqno = FUNC9(uip_tcphdr->seqno);
	uip_ackno = uip_tcphdr->ackno = FUNC9(uip_tcphdr->ackno);
	uip_tcphdr->wnd = FUNC10(uip_tcphdr->wnd);

	uip_flags = FUNC2(uip_tcphdr)&UIP_TCP_FLAGS;
	uip_tcplen = p->tot_len+((uip_flags&UIP_TCP_FIN||uip_flags&UIP_TCP_SYN)?1:0);

	prev = NULL;
	for(pcb=uip_tcp_active_pcbs;pcb!=NULL;pcb=pcb->next) {
		if(pcb->state!=UIP_CLOSED && pcb->state!=UIP_TIME_WAIT && pcb->state!=UIP_LISTEN) {
			if(pcb->remote_port==uip_tcphdr->src &&
				pcb->local_port==uip_tcphdr->dst &&
				FUNC4(&pcb->remote_ip,&uip_iphdr->src) &&
				FUNC4(&pcb->local_ip,&uip_iphdr->dst)) {
				if(prev!=NULL) {
					prev->next = pcb->next;
					pcb->next = uip_tcp_active_pcbs;
					uip_tcp_active_pcbs = pcb;
				}
				break;
			}
			prev = pcb;
		}
	}

	if(pcb==NULL) {
		for(pcb=uip_tcp_tw_pcbs;pcb!=NULL;pcb=pcb->next) {
			if(pcb->state==UIP_TIME_WAIT &&
				pcb->remote_port==uip_tcphdr->src &&
				pcb->local_port==uip_tcphdr->dst &&
				FUNC4(&pcb->remote_ip,&uip_iphdr->src) &&
				FUNC4(&pcb->local_ip,&uip_iphdr->dst)) {
				FUNC20(pcb);
				return;
			}
		}

		prev = NULL;
		for(lpcb=uip_tcp_listen_pcbs.listen_pcbs;lpcb!=NULL;lpcb=lpcb->next) {
			if((FUNC5(&lpcb->local_ip) || FUNC4(&lpcb->local_ip,&uip_iphdr->dst)) &&
				lpcb->local_port==uip_tcphdr->dst) {
				if(prev!=NULL) {
					((struct uip_tcp_pcb_listen*)prev)->next = lpcb->next;
					lpcb->next = uip_tcp_listen_pcbs.listen_pcbs;
					uip_tcp_listen_pcbs.listen_pcbs = lpcb;
				}
				FUNC19(lpcb);
				return;
			}
			prev = (struct uip_tcp_pcb*)lpcb;
		}
	}

	if(pcb!=NULL) {
		uip_inseg.next = NULL;
		uip_inseg.len = p->tot_len;
		uip_inseg.dataptr = p->payload;
		uip_inseg.p = p;
		uip_inseg.tcphdr = uip_tcphdr;

		uip_recv_data = NULL;
		uip_recv_flags = 0;

		uip_tcp_input_pcb = pcb;
		err = FUNC22(pcb);
		uip_tcp_input_pcb = NULL;

		if(err!=UIP_ERR_ABRT) {
			if(uip_recv_flags&UIP_TF_RESET) {
				if(pcb->errf) pcb->errf(pcb->cb_arg,UIP_ERR_RST);
				FUNC17(&uip_tcp_active_pcbs,pcb);
				FUNC8(&uip_tcp_pcbs,pcb);
			} else if(uip_recv_flags&UIP_TF_CLOSED) {
				FUNC17(&uip_tcp_active_pcbs,pcb);
				FUNC8(&uip_tcp_pcbs,pcb);
			} else {
				err = UIP_ERR_OK;

				if(pcb->acked>0) {
					if(pcb->sent) err = pcb->sent(pcb->cb_arg,pcb,pcb->acked);
				}

				if(uip_recv_data!=NULL) {
					if(pcb->recv) err = pcb->recv(pcb->cb_arg,pcb,uip_recv_data,UIP_ERR_OK);
				}

				if(err==UIP_ERR_OK) FUNC21(pcb);
			}
		}
		if(uip_inseg.p!=NULL) FUNC15(uip_inseg.p);
	} else {
		if(!(FUNC2(uip_tcphdr)&UIP_TCP_RST))
			FUNC18(uip_ackno,uip_seqno+uip_tcplen,&uip_iphdr->dst,&uip_iphdr->src,uip_tcphdr->dst,uip_tcphdr->src);

		FUNC15(p);
	}
}