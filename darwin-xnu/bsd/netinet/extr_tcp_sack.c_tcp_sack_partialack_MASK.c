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
struct tcphdr {scalar_t__ th_ack; } ;
struct TYPE_2__ {scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {int t_maxseg; scalar_t__ snd_cwnd; scalar_t__ snd_nxt; scalar_t__ sack_newdata; scalar_t__ snd_ssthresh; scalar_t__ snd_fack; scalar_t__ snd_recover; int /*<<< orphan*/  snd_holes; TYPE_1__ sackhint; scalar_t__ t_rtttime; scalar_t__* t_timer; } ;
struct sackhole {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tcphdr*,struct tcpcb*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 size_t TCPT_REXMT ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 
 struct sackhole* FUNC4 (struct tcpcb*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 

void
FUNC5(struct tcpcb *tp, struct tcphdr *th)
{
	int num_segs = 1;

	tp->t_timer[TCPT_REXMT] = 0;
	tp->t_rtttime = 0;
	/* send one or 2 segments based on how much new data was acked */
	if (((FUNC0(th, tp)) / tp->t_maxseg) > 2)
		num_segs = 2;
	tp->snd_cwnd = (tp->sackhint.sack_bytes_rexmit +
		(tp->snd_nxt - tp->sack_newdata) +
		num_segs * tp->t_maxseg);
	if (tp->snd_cwnd > tp->snd_ssthresh)
		tp->snd_cwnd = tp->snd_ssthresh;
	if (FUNC1(tp->snd_fack, tp->snd_recover) &&
	    tp->snd_fack == th->th_ack && FUNC2(&tp->snd_holes)) {
		struct sackhole *temp;
		/*
		 * we received a partial ack but there is no sack_hole
		 * that will cover the remaining seq space. In this case,
		 * create a hole from snd_fack to snd_recover so that
		 * the sack recovery will continue.
		 */
		temp = FUNC4(tp, tp->snd_fack,
		    tp->snd_recover, NULL);
		if (temp != NULL)
			tp->snd_fack = tp->snd_recover;
	}
	(void) FUNC3(tp);
}