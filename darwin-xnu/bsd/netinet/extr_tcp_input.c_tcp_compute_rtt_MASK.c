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
typedef  scalar_t__ u_int32_t ;
struct tcpopt {int to_flags; scalar_t__ to_tsecr; } ;
struct tcphdr {scalar_t__ th_ack; } ;
struct tcpcb {scalar_t__ t_rtttime; scalar_t__ t_rtseq; scalar_t__ t_pipeack_lastuna; scalar_t__ t_pipeack; int /*<<< orphan*/  t_pipeack_ind; scalar_t__* t_pipeack_sample; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ TCP_CC_CWND_INIT_BYTES ; 
 int /*<<< orphan*/  TCP_PIPEACK_SAMPLE_COUNT ; 
 int TOF_TS ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct tcpcb*) ; 
 int tcp_now ; 
 int /*<<< orphan*/  FUNC4 (struct tcpcb*,int,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct tcpcb *tp, struct tcpopt *to, struct tcphdr *th)
{
	int rtt = 0;
	FUNC2(to != NULL && th != NULL);
	if (tp->t_rtttime != 0 && FUNC0(th->th_ack, tp->t_rtseq)) {
		u_int32_t pipe_ack_val;
		rtt = tcp_now - tp->t_rtttime;
		/*
		 * Compute pipe ack -- the amount of data acknowledged
		 * in the last RTT
		 */
		if (FUNC0(th->th_ack, tp->t_pipeack_lastuna)) {
			pipe_ack_val = th->th_ack - tp->t_pipeack_lastuna;
			/* Update the sample */
			tp->t_pipeack_sample[tp->t_pipeack_ind++] =
			    pipe_ack_val;
			tp->t_pipeack_ind %= TCP_PIPEACK_SAMPLE_COUNT;

			/* Compute the max of the pipeack samples */
			pipe_ack_val = FUNC3(tp);
			tp->t_pipeack = (pipe_ack_val >
				    TCP_CC_CWND_INIT_BYTES) ?
				    pipe_ack_val : 0;
		}
		/* start another measurement */
		tp->t_rtttime = 0;
	}
	if (((to->to_flags & TOF_TS) != 0) &&
		(to->to_tsecr != 0) &&
		FUNC1(tcp_now, to->to_tsecr)) {
		FUNC4(tp, (tcp_now - to->to_tsecr),
			to->to_tsecr, th->th_ack);
	} else if (rtt > 0) {
		FUNC4(tp, rtt, 0, th->th_ack);
	}
}