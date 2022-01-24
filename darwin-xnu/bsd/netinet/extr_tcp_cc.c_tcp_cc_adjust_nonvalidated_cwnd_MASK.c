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
struct tcpcb {int t_pipeack; int snd_cwnd; int t_maxseg; int /*<<< orphan*/  t_flagsext; int /*<<< orphan*/  t_lossflightsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_CC_CWND_INIT_BYTES ; 
 int /*<<< orphan*/  TF_CWND_NONVALIDATED ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 int FUNC2 (struct tcpcb*) ; 
 int tcprexmtthresh ; 

inline void
FUNC3(struct tcpcb *tp)
{
	tp->t_pipeack = FUNC2(tp);
	FUNC1(tp);
	tp->snd_cwnd = (FUNC0(tp->t_pipeack, tp->t_lossflightsize) >> 1);
	tp->snd_cwnd = FUNC0(tp->snd_cwnd, TCP_CC_CWND_INIT_BYTES);
	tp->snd_cwnd += tp->t_maxseg * tcprexmtthresh;
	tp->t_flagsext &= ~TF_CWND_NONVALIDATED;
}