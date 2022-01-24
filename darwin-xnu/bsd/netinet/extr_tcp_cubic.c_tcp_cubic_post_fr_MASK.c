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
typedef  int uint32_t ;
typedef  int u_int32_t ;
struct tcphdr {int th_ack; } ;
struct tcpcb {int snd_max; scalar_t__ t_lossflightsize; int t_pipeack; int t_maxseg; int snd_ssthresh; int snd_cwnd; TYPE_1__* t_ccstate; } ;
struct TYPE_2__ {scalar_t__ cub_tcp_bytes_acked; scalar_t__ cub_target_win; scalar_t__ cub_tcp_win; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tcpcb*) ; 
 scalar_t__ FUNC1 (int,int) ; 
 void* FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct tcpcb*) ; 

__attribute__((used)) static void
FUNC5(struct tcpcb *tp, struct tcphdr *th)
{
	uint32_t flight_size = 0;

	if (FUNC1(th->th_ack, tp->snd_max))
		flight_size = tp->snd_max - th->th_ack;

	if (FUNC0(tp) && tp->t_lossflightsize > 0) {
		u_int32_t total_rxt_size = 0, ncwnd;
		/*
		 * When SACK is enabled, the number of retransmitted bytes
		 * can be counted more accurately.
		 */
		total_rxt_size = FUNC4(tp);
		ncwnd = FUNC2(tp->t_pipeack, tp->t_lossflightsize);
		if (total_rxt_size <= ncwnd) {
			ncwnd = ncwnd - total_rxt_size;
		}

		/*
		 * To avoid sending a large burst at the end of recovery
		 * set a max limit on ncwnd
		 */
		ncwnd = FUNC3(ncwnd, (tp->t_maxseg << 6));
		ncwnd = ncwnd >> 1;
		flight_size = FUNC2(ncwnd, flight_size);
	}
	/*
	 * Complete ack. The current window was inflated for fast recovery.
	 * It has to be deflated post recovery.
	 *
	 * Window inflation should have left us with approx snd_ssthresh 
	 * outstanding data. If the flight size is zero or one segment,
	 * make congestion window to be at least as big as 2 segments to
	 * avoid delayed acknowledgements. This is according to RFC 6582.
	 */
	if (flight_size < tp->snd_ssthresh)
		tp->snd_cwnd = FUNC2(flight_size, tp->t_maxseg) 
				+ tp->t_maxseg;
	else
		tp->snd_cwnd = tp->snd_ssthresh;
	tp->t_ccstate->cub_tcp_win = 0;
	tp->t_ccstate->cub_target_win = 0;
	tp->t_ccstate->cub_tcp_bytes_acked = 0;
}