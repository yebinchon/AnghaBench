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
struct tcpcb {int dummy; } ;
struct inpcb {int inp_flags2; } ;

/* Variables and functions */
 int INP2_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct tcpcb*,int /*<<< orphan*/ ) ; 
 struct tcpcb* FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  t_twentry ; 
 int /*<<< orphan*/  tcp_tw_tailq ; 

void
FUNC2(struct inpcb *inp)
{
	struct tcpcb *tp = FUNC1(inp);
	if (inp->inp_flags2 & INP2_TIMEWAIT)
		FUNC0(&tcp_tw_tailq, tp, t_twentry);
}