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
struct tcpcb {int snd_ssthresh; TYPE_3__* t_ccstate; TYPE_2__* t_inpcb; scalar_t__ t_bytes_acked; scalar_t__ t_pipeack; } ;
struct TYPE_6__ {int cub_last_max; } ;
struct TYPE_5__ {TYPE_1__* inp_stat; } ;
struct TYPE_4__ {scalar_t__ txbytes; } ;

/* Variables and functions */
 scalar_t__ TCP_CC_CWND_INIT_BYTES ; 
 int TCP_MAXWIN ; 
 int TCP_MAX_WINSHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 

__attribute__((used)) static void FUNC4(struct tcpcb *tp)
{
	FUNC0(tp->t_ccstate != NULL);	

	FUNC3(tp);
	FUNC1(tp);
	tp->t_pipeack = 0;
	FUNC2(tp);

	/* Start counting bytes for RFC 3465 again */
	tp->t_bytes_acked = 0;

	/*
	 * slow start threshold could get initialized to a lower value
	 * when there is a cached value in the route metrics. In this case,
	 * the connection can enter congestion avoidance without any packet
	 * loss and Cubic will enter steady-state too early. It is better
	 * to always probe to find the initial slow-start threshold.
	 */
	if (tp->t_inpcb->inp_stat->txbytes <= TCP_CC_CWND_INIT_BYTES
	    && tp->snd_ssthresh < (TCP_MAXWIN << TCP_MAX_WINSHIFT))
		tp->snd_ssthresh = TCP_MAXWIN << TCP_MAX_WINSHIFT;

	/* Initialize cubic last max to be same as ssthresh */
	tp->t_ccstate->cub_last_max = tp->snd_ssthresh;
}