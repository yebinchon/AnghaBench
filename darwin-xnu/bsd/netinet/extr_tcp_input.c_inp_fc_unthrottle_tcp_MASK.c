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
struct tcpcb {scalar_t__ t_bytes_acked; int /*<<< orphan*/  t_flagsext; int /*<<< orphan*/  snd_ssthresh; int /*<<< orphan*/  snd_cwnd; } ;
struct inpcb {struct tcpcb* inp_ppcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pre_fr ) (struct tcpcb*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 int /*<<< orphan*/  TF_CWND_NONVALIDATED ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 

void
FUNC4(struct inpcb *inp)
{
	struct tcpcb *tp = inp->inp_ppcb;
	/*
	 * Back off the slow-start threshold and enter
	 * congestion avoidance phase
	 */
	if (FUNC0(tp)->pre_fr != NULL)
		FUNC0(tp)->pre_fr(tp);

	tp->snd_cwnd = tp->snd_ssthresh;
	tp->t_flagsext &= ~TF_CWND_NONVALIDATED;
	/*
	 * Restart counting for ABC as we changed the
	 * congestion window just now.
	 */
	tp->t_bytes_acked = 0;

	/* Reset retransmit shift as we know that the reason
	 * for delay in sending a packet is due to flow
	 * control on the outgoing interface. There is no need
	 * to backoff retransmit timer.
	 */
	FUNC1(tp);

	/*
	 * Start the output stream again. Since we are
	 * not retransmitting data, do not reset the
	 * retransmit timer or rtt calculation.
	 */
	FUNC3(tp);
}