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
struct tcpcb {TYPE_1__* t_inpcb; } ;
struct TYPE_2__ {int inp_flags2; int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 int INP2_TIMEWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 

void
FUNC3(struct tcpcb *tp)
{
	FUNC0(tp->t_inpcb->inp_socket);

	if (tp->t_inpcb->inp_flags2 & INP2_TIMEWAIT)
		return;

	FUNC2(tp);

	FUNC1(tp);
	return;
}