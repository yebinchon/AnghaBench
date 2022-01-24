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
typedef  scalar_t__ uint32_t ;
struct tcpcb {scalar_t__* t_timer; struct inpcb* t_inpcb; } ;
struct inpcbinfo {int /*<<< orphan*/  ipi_twcount; int /*<<< orphan*/  ipi_lock; } ;
struct inpcb {int inp_flags2; } ;

/* Variables and functions */
 int INP2_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tcpcb*,int /*<<< orphan*/ ) ; 
 size_t TCPT_2MSL ; 
 scalar_t__ FUNC4 (struct tcpcb*) ; 
 int /*<<< orphan*/  inp_list ; 
 int /*<<< orphan*/  t_twentry ; 
 struct inpcbinfo tcbinfo ; 
 scalar_t__ tcp_now ; 
 int /*<<< orphan*/  FUNC5 (struct tcpcb*) ; 
 int /*<<< orphan*/  tcp_tw_tailq ; 

__attribute__((used)) static void
FUNC6(struct tcpcb *tp, uint32_t delay)
{
	struct inpcbinfo *pcbinfo = &tcbinfo;
	struct inpcb *inp = tp->t_inpcb;
	uint32_t timer;

	/* pcb list should be locked when we get here */
	FUNC0(pcbinfo->ipi_lock, LCK_RW_ASSERT_EXCLUSIVE);

	/* We may get here multiple times, so check */
	if (!(inp->inp_flags2 & INP2_TIMEWAIT)) {
		pcbinfo->ipi_twcount++;
		inp->inp_flags2 |= INP2_TIMEWAIT;

		/* Remove from global inp list */
		FUNC1(inp, inp_list);
	} else {
		FUNC3(&tcp_tw_tailq, tp, t_twentry);
	}

	/* Compute the time at which this socket can be closed */
	timer = tcp_now + delay;

	/* We will use the TCPT_2MSL timer for tracking this delay */

	if (FUNC4(tp))
		FUNC5(tp);
	tp->t_timer[TCPT_2MSL] = timer;

	FUNC2(&tcp_tw_tailq, tp, t_twentry);
}