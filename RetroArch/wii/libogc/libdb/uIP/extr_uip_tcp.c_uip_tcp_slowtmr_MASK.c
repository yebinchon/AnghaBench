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
typedef  scalar_t__ u8_t ;
typedef  int u32_t ;
typedef  int u32 ;
struct uip_tcp_pcb {scalar_t__ state; scalar_t__ nrtx; int rtime; int rto; int sa; int sv; int cwnd; int ssthresh; int mss; int tmr; int so_options; int keepalive; int keepcnt; scalar_t__ polltmr; scalar_t__ pollinterval; scalar_t__ (* poll ) (int /*<<< orphan*/ ,struct uip_tcp_pcb*) ;struct uip_tcp_pcb* next; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* errf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * ooseq; int /*<<< orphan*/  snd_wnd; int /*<<< orphan*/ * unacked; } ;
typedef  scalar_t__ s8_t ;

/* Variables and functions */
 scalar_t__ UIP_CLOSE_WAIT ; 
 int /*<<< orphan*/  UIP_ERR_ABRT ; 
 scalar_t__ UIP_ERR_OK ; 
 scalar_t__ UIP_ESTABLISHED ; 
 scalar_t__ UIP_FIN_WAIT_2 ; 
 scalar_t__ UIP_MAXRTX ; 
 scalar_t__ UIP_MAXSYNRTX ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int UIP_SOF_KEEPALIVE ; 
 scalar_t__ UIP_SYN_RCVD ; 
 scalar_t__ UIP_SYN_SENT ; 
 int UIP_TCP_FIN_WAIT_TIMEOUT ; 
 int UIP_TCP_KEEPINTVL ; 
 int UIP_TCP_MAXIDLE ; 
 int UIP_TCP_MSL ; 
 int UIP_TCP_OOSEQ_TIMEOUT ; 
 int UIP_TCP_SLOW_INTERVAL ; 
 int UIP_TCP_SYN_RCVD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC4 (struct uip_tcp_pcb*) ; 
 struct uip_tcp_pcb* uip_tcp_active_pcbs ; 
 int* uip_tcp_backoff ; 
 int /*<<< orphan*/  FUNC5 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC6 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  uip_tcp_pcbs ; 
 int /*<<< orphan*/  FUNC7 (struct uip_tcp_pcb*) ; 
 int uip_tcp_ticks ; 
 struct uip_tcp_pcb* uip_tcp_tw_pcbs ; 
 int /*<<< orphan*/  FUNC8 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10()
{
	struct uip_tcp_pcb *prev,*pcb,*pcb2;
	u32 eff_wnd;
	u8_t pcb_remove;
	s8_t err;

	err = UIP_ERR_OK;

	uip_tcp_ticks++;

	prev = NULL;
	pcb = uip_tcp_active_pcbs;
	while(pcb!=NULL) {
		pcb_remove = 0;

		if(pcb->state==UIP_SYN_SENT && pcb->nrtx==UIP_MAXSYNRTX) pcb_remove++;
		else if(pcb->nrtx==UIP_MAXRTX) pcb_remove++;
		else {
			pcb->rtime++;
			if(pcb->unacked!=NULL && pcb->rtime>=pcb->rto) {
				if(pcb->state==UIP_SYN_SENT) pcb->rto = ((pcb->sa>>3)+pcb->sv)<<uip_tcp_backoff[pcb->nrtx];

				eff_wnd = FUNC0(pcb->cwnd,pcb->snd_wnd);
				pcb->ssthresh = eff_wnd>>1;

				if(pcb->ssthresh<pcb->mss) pcb->ssthresh = pcb->mss*2;
				pcb->cwnd = pcb->mss;

				FUNC7(pcb);
			}
		}

		if(pcb->state==UIP_FIN_WAIT_2) {
			if((u32_t)(uip_tcp_ticks-pcb->tmr)>UIP_TCP_FIN_WAIT_TIMEOUT/UIP_TCP_SLOW_INTERVAL) pcb_remove++;
		}

		if(pcb->so_options&UIP_SOF_KEEPALIVE &&
			(pcb->state==UIP_ESTABLISHED || pcb->state==UIP_CLOSE_WAIT)) {
			if((u32_t)(uip_tcp_ticks-pcb->tmr)>(pcb->keepalive+UIP_TCP_MAXIDLE)/UIP_TCP_SLOW_INTERVAL) FUNC4(pcb);
			else if((u32_t)(uip_tcp_ticks-pcb->tmr)>(pcb->keepalive+pcb->keepcnt*UIP_TCP_KEEPINTVL)/UIP_TCP_SLOW_INTERVAL) {
				FUNC5(pcb);
				pcb->keepcnt++;
			}
		}

		if(pcb->ooseq!=NULL && (u32_t)uip_tcp_ticks-pcb->tmr>=pcb->rto*UIP_TCP_OOSEQ_TIMEOUT) {
			FUNC9(pcb->ooseq);
			pcb->ooseq = NULL;
		}
		if(pcb->state==UIP_SYN_RCVD) {
			if((u32_t)(uip_tcp_ticks-pcb->tmr)>UIP_TCP_SYN_RCVD_TIMEOUT/UIP_TCP_SLOW_INTERVAL) pcb_remove++;
		}

		if(pcb_remove) {
			FUNC6(pcb);

			if(prev!=NULL) prev->next = pcb->next;
			else uip_tcp_active_pcbs = pcb->next;

			if(pcb->errf) pcb->errf(pcb->cb_arg,UIP_ERR_ABRT);

			pcb2 = pcb->next;
			FUNC1(&uip_tcp_pcbs,pcb);
			pcb = pcb2;
		} else {
			pcb->polltmr++;
			if(pcb->polltmr>=pcb->pollinterval) {
				pcb->polltmr = 0;
				if(pcb->poll) err = pcb->poll(pcb->cb_arg,pcb);

				if(err==UIP_ERR_OK) FUNC8(pcb);
			}

			prev = pcb;
			pcb = pcb->next;
		}
	}

	prev = NULL;
	pcb = uip_tcp_tw_pcbs;
	while(pcb!=NULL) {
		pcb_remove = 0;

		if((u32_t)(uip_tcp_ticks-pcb->tmr)>2*UIP_TCP_MSL/UIP_TCP_SLOW_INTERVAL) pcb_remove++;

		if(pcb_remove) {
			FUNC6(pcb);

			if(prev!=NULL) prev->next = pcb->next;
			else uip_tcp_tw_pcbs = pcb->next;

			pcb2 = pcb->next;
			FUNC1(&uip_tcp_pcbs,pcb);
			pcb = pcb2;
		} else {
			prev = pcb;
			pcb = pcb->next;
		}
	}
}