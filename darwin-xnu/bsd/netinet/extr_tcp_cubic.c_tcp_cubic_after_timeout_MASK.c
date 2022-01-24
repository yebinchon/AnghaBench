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
struct tcpcb {scalar_t__ t_state; int /*<<< orphan*/  t_maxseg; int /*<<< orphan*/  snd_cwnd; scalar_t__ snd_una; scalar_t__ snd_max; int /*<<< orphan*/ * t_ccstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcpcb*) ; 
 scalar_t__ TCPS_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*) ; 

__attribute__((used)) static void 
FUNC4(struct tcpcb *tp)
{
	FUNC1(tp->t_ccstate != NULL);

	/*
	 * Avoid adjusting congestion window due to SYN retransmissions.
	 * If more than one byte (SYN) is outstanding then it is still
	 * needed to adjust the window.
	 */
	if (tp->t_state < TCPS_ESTABLISHED &&
	    ((int)(tp->snd_max - tp->snd_una) <= 1))
		return;

	if (!FUNC0(tp)) {
		FUNC2(tp);
		FUNC3(tp);
	}

	/*
	 * Close the congestion window down to one segment as a retransmit
	 * timeout might indicate severe congestion.
	 */
	tp->snd_cwnd = tp->t_maxseg;
}