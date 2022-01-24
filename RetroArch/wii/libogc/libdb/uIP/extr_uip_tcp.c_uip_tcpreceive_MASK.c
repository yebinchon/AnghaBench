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
typedef  scalar_t__ u32_t ;
typedef  void* u16_t ;
struct uip_tcpseg {scalar_t__ len; struct uip_pbuf* p; TYPE_2__* tcphdr; struct uip_tcpseg* next; int /*<<< orphan*/  dataptr; } ;
struct uip_tcp_pcb {scalar_t__ snd_wnd; scalar_t__ snd_wl1; scalar_t__ snd_wl2; scalar_t__ lastack; int dupacks; int cwnd; int ssthresh; int mss; int flags; scalar_t__ snd_max; int rto; int sa; int sv; scalar_t__ state; scalar_t__ rttest; scalar_t__ rtseq; scalar_t__ rcv_nxt; scalar_t__ rcv_wnd; struct uip_tcpseg* ooseq; struct uip_tcpseg* unsent; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  snd_queuelen; scalar_t__ polltmr; struct uip_tcpseg* unacked; scalar_t__ acked; int /*<<< orphan*/  snd_buf; scalar_t__ nrtx; } ;
struct uip_pbuf {scalar_t__ len; scalar_t__ tot_len; int /*<<< orphan*/  payload; struct uip_pbuf* next; } ;
typedef  scalar_t__ s32_t ;
struct TYPE_4__ {scalar_t__ seqno; } ;
struct TYPE_3__ {scalar_t__ wnd; } ;

/* Variables and functions */
 scalar_t__ UIP_CLOSE_WAIT ; 
 scalar_t__ UIP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int UIP_TCP_ACK ; 
 int UIP_TCP_FIN ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (struct uip_tcpseg*) ; 
 int /*<<< orphan*/  UIP_TF_GOT_FIN ; 
 int UIP_TF_INFR ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ uip_ackno ; 
 int uip_flags ; 
 struct uip_tcpseg uip_inseg ; 
 int /*<<< orphan*/  FUNC9 (struct uip_pbuf*,struct uip_pbuf*) ; 
 scalar_t__ FUNC10 (struct uip_pbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct uip_pbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct uip_pbuf*,scalar_t__) ; 
 struct uip_pbuf* uip_recv_data ; 
 int /*<<< orphan*/  uip_recv_flags ; 
 scalar_t__ uip_seqno ; 
 int /*<<< orphan*/  FUNC13 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC14 (struct uip_tcp_pcb*) ; 
 int /*<<< orphan*/  FUNC15 (struct uip_tcp_pcb*) ; 
 scalar_t__ uip_tcp_ticks ; 
 TYPE_1__* uip_tcphdr ; 
 scalar_t__ uip_tcplen ; 
 void* FUNC16 (struct uip_tcpseg*) ; 
 int /*<<< orphan*/  FUNC17 (struct uip_tcpseg*) ; 

__attribute__((used)) static void FUNC18(struct uip_tcp_pcb *pcb)
{
	struct uip_tcpseg *next,*prev;
	struct uip_tcpseg *cseg;
	struct uip_pbuf *p;
	s32_t off,m;
	u32_t right_wnd_edge;
	u16_t new_tot_len;

	if(uip_flags&UIP_TCP_ACK) {
		right_wnd_edge = pcb->snd_wnd+pcb->snd_wl1;
		if(FUNC5(pcb->snd_wl1,uip_seqno) ||
			(pcb->snd_wl1==uip_seqno && FUNC5(pcb->snd_wl2,uip_ackno)) ||
			(pcb->snd_wl2==uip_ackno && uip_tcphdr->wnd>pcb->snd_wnd)) {
			pcb->snd_wnd = uip_tcphdr->wnd;
			pcb->snd_wl1 = uip_seqno;
			pcb->snd_wl2 = uip_ackno;
		}

		if(pcb->lastack==uip_ackno) {
			pcb->acked = 0;
			if(pcb->snd_wl1+pcb->snd_wnd==right_wnd_edge) {
				pcb->dupacks++;
				if(pcb->dupacks>=3 && pcb->unacked!=NULL) {
					if(!(uip_flags&UIP_TF_INFR)) {
						FUNC0("uip_tcpreceive: dupacks, fast retransmit.");
						FUNC15(pcb)	;

						if(pcb->cwnd>pcb->snd_wnd) pcb->ssthresh = pcb->snd_wnd/2;
						else pcb->ssthresh = pcb->cwnd/2;

						pcb->cwnd = pcb->ssthresh+3*pcb->mss;
						pcb->flags |= UIP_TF_INFR;
					} else {
						if((u16_t)(pcb->cwnd+pcb->mss)>pcb->cwnd) pcb->cwnd += pcb->mss;
					}
				}
			}
		} else if(FUNC2(uip_ackno,pcb->lastack+1,pcb->snd_max)) {
			if(pcb->flags&UIP_TF_INFR) {
				pcb->flags &= ~UIP_TF_INFR;
				pcb->cwnd = pcb->ssthresh;
			}

			pcb->nrtx = 0;
			pcb->rto = (pcb->sa>>3)+pcb->sv;
			pcb->acked = uip_ackno-pcb->lastack;
			pcb->snd_buf += pcb->acked;
			pcb->dupacks = 0;
			pcb->lastack = uip_ackno;

			if(pcb->state>=UIP_ESTABLISHED) {
				if(pcb->cwnd<pcb->ssthresh) {
					if((u16_t)(pcb->cwnd+pcb->mss)>pcb->cwnd) pcb->cwnd += pcb->mss;

				} else {
					u16_t new_cwnd = (pcb->cwnd+pcb->mss*pcb->mss/pcb->cwnd);
					if(new_cwnd>pcb->cwnd) pcb->cwnd = new_cwnd;
				}
			}

			while(pcb->unacked!=NULL &&
				FUNC4(FUNC8(pcb->unacked->tcphdr->seqno)+FUNC6(pcb->unacked),uip_ackno)) {

				next = pcb->unacked;
				pcb->unacked = pcb->unacked->next;
				pcb->snd_queuelen -= FUNC10(next->p);

				FUNC17(next);
			}
			pcb->polltmr = 0;
		}

		while(pcb->unsent!=NULL &&
			FUNC2(uip_ackno,FUNC8(pcb->unsent->tcphdr->seqno)+FUNC6(pcb->unsent),pcb->snd_max)) {

			next = pcb->unsent;
			pcb->unsent = pcb->unsent->next;
			pcb->snd_queuelen -= FUNC10(next->p);

			FUNC17(next);

			if(pcb->unsent!=NULL) pcb->snd_nxt = FUNC7(pcb->unsent->tcphdr->seqno);
		}

		if(pcb->rttest && FUNC5(pcb->rtseq,uip_ackno)) {
			m = uip_tcp_ticks - pcb->rttest;
			m = m - (pcb->sa>>3);
			pcb->sa += m;

			if(m<0) m -= m;

			m = m - (pcb->sv>>2);
			pcb->sv += m;
			pcb->rto = (pcb->sa>>3)+pcb->sv;

			pcb->rttest = 0;
		}
	}

	if(uip_tcplen>0) {
		if(FUNC2(pcb->rcv_nxt,uip_seqno+1,uip_seqno+uip_tcplen-1)) {
			off = pcb->rcv_nxt - uip_seqno;
			p = uip_inseg.p;
			if(uip_inseg.p->len<off) {
				new_tot_len = uip_inseg.p->tot_len - off;
				while(p->len<off) {
					off -= p->len;
					p->tot_len = new_tot_len;
					p->len = 0;
					p = p->next;
				}
				FUNC11(p,-off);
			} else {
				FUNC11(uip_inseg.p,-off);
			}

			uip_inseg.dataptr = p->payload;
			uip_inseg.len -= pcb->rcv_nxt - uip_seqno;
			uip_inseg.tcphdr->seqno = uip_seqno = pcb->rcv_nxt;
		} else {
			if(FUNC5(uip_seqno,pcb->rcv_nxt)) {
				FUNC0("uip_tcpreceive: duplicate seqno.");
				FUNC14(pcb);
			}
		}

		if(FUNC2(uip_seqno,pcb->rcv_nxt,pcb->rcv_nxt+pcb->rcv_wnd-1)) {
			//printf("uip_tcpreceive: seqno = %u, rcv_nxt = %u, wnd = %u\n",uip_seqno,pcb->rcv_nxt,(pcb->rcv_nxt+pcb->rcv_wnd-1));
			if(pcb->rcv_nxt==uip_seqno) {
				if(pcb->ooseq!=NULL && FUNC4(pcb->ooseq->tcphdr->seqno,uip_seqno+uip_inseg.len)) {
					uip_inseg.len = pcb->ooseq->tcphdr->seqno - uip_seqno;
					FUNC12(uip_inseg.p,uip_inseg.len);
				}

				uip_tcplen = FUNC6(&uip_inseg);
				if(pcb->state!=UIP_CLOSE_WAIT) pcb->rcv_nxt += uip_tcplen;
				//printf("uip_tcpreceive: uip_tcplen = %u, rcv_nxt = %u\n",uip_tcplen,pcb->rcv_nxt);

				if(pcb->rcv_wnd<uip_tcplen) pcb->rcv_wnd = 0;
				else pcb->rcv_wnd -= uip_tcplen;

				if(uip_inseg.p->tot_len>0) {
					uip_recv_data = uip_inseg.p;
					uip_inseg.p = NULL;
				}

				if(FUNC1(uip_inseg.tcphdr)&UIP_TCP_FIN) {
					FUNC0("uip_tcpreceive: received FIN.\n");
					uip_recv_flags = UIP_TF_GOT_FIN;
				}

				while(pcb->ooseq!=NULL && pcb->ooseq->tcphdr->seqno==pcb->rcv_nxt) {
					cseg = pcb->ooseq;
					uip_seqno = pcb->ooseq->tcphdr->seqno;

					pcb->rcv_nxt += FUNC6(cseg);
					if(pcb->rcv_wnd<FUNC6(cseg)) pcb->rcv_wnd = 0;
					else pcb->rcv_wnd -= FUNC6(cseg);

					if(cseg->p->tot_len>0) {
						if(uip_recv_data) FUNC9(uip_recv_data,cseg->p);
						else uip_recv_data = cseg->p;

						cseg->p = NULL;
					}

					if(FUNC1(cseg->tcphdr)&UIP_TCP_FIN) {
						FUNC0("uip_tcpreceive: dequeued FIN.\n");
						uip_recv_flags = UIP_TF_GOT_FIN;
					}

					pcb->ooseq = cseg->next;
					FUNC17(cseg);
				}
				//printf("uip_tcpreceive: pcb->flags = %02x\n",pcb->flags);
				FUNC13(pcb);
				//printf("uip_tcpreceive: pcb->flags = %02x\n",pcb->flags);
			} else {
				FUNC0("uip_tcpreceive: packet out-of-sequence.");
				FUNC14(pcb);
				if(pcb->ooseq==NULL)
					FUNC16(&uip_inseg);
				else {
					prev = NULL;
					for(next=pcb->ooseq;next!=NULL;next=next->next) {
						if(uip_seqno==next->tcphdr->seqno) {
							if(uip_inseg.len>next->len) {
								cseg = FUNC16(&uip_inseg);
								if(cseg!=NULL) {
									cseg->next = next->next;
									if(prev!=NULL) prev->next = cseg;
									else pcb->ooseq = cseg;
								}
								break;
							} else
								break;
						} else {
							if(prev==NULL) {
								if(FUNC5(uip_seqno,next->tcphdr->seqno)) {
									if(FUNC3(uip_seqno+uip_inseg.len,next->tcphdr->seqno)) {
										uip_inseg.len = next->tcphdr->seqno - uip_seqno;
										FUNC12(uip_inseg.p,uip_inseg.len);
									}

									cseg = FUNC16(&uip_inseg);
									if(cseg!=NULL) {
										cseg->next = next;
										pcb->ooseq = cseg;
									}
									break;
								}
							} else if(FUNC2(uip_seqno,prev->tcphdr->seqno+1,next->tcphdr->seqno-1)) {
								if(FUNC3(uip_seqno+uip_inseg.len,next->tcphdr->seqno)) {
									uip_inseg.len = next->tcphdr->seqno - uip_seqno;
									FUNC12(uip_inseg.p,uip_inseg.len);
								}

								cseg = FUNC16(&uip_inseg);
								if(cseg!=NULL) {
									cseg->next = next;
									prev->next = cseg;
									if(FUNC3(prev->tcphdr->seqno+prev->len,uip_seqno)) {
										prev->len = uip_seqno - prev->tcphdr->seqno;
										FUNC12(prev->p,prev->len);
									}
								}
								break;
							}

							if(next->next==NULL && FUNC3(uip_seqno,next->tcphdr->seqno)) {
								next->next = FUNC16(&uip_inseg);
								if(next->next!=NULL) {
									if(FUNC3(next->tcphdr->seqno+next->len,uip_seqno)) {
										next->len = uip_seqno - next->tcphdr->seqno;
										FUNC12(next->p,next->len);
									}
								}
							}
						}
						prev = next;
					}
				}
			}
		} else {
			if(!FUNC2(uip_seqno,pcb->rcv_nxt,pcb->rcv_nxt+pcb->rcv_wnd-1)) {
				FUNC14(pcb);
			}
		}
	} else {
		if(!FUNC2(uip_seqno,pcb->rcv_nxt,pcb->rcv_nxt+pcb->rcv_wnd-1)) {
			FUNC14(pcb);
		}
	}
}