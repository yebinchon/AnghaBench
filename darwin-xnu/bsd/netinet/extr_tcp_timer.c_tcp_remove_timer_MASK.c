#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tcptimerlist {int /*<<< orphan*/  mtx; int /*<<< orphan*/  entries; TYPE_3__* next_te; } ;
struct TYPE_7__ {int /*<<< orphan*/ * le_prev; int /*<<< orphan*/ * le_next; } ;
struct TYPE_8__ {TYPE_2__ le; } ;
struct tcpcb {TYPE_3__ tentry; int /*<<< orphan*/  t_flags; TYPE_1__* t_inpcb; } ;
struct TYPE_6__ {int /*<<< orphan*/  inp_socket; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TF_TIMER_ONLIST ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  le ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct tcptimerlist tcp_timer_list ; 

void
FUNC6(struct tcpcb *tp)
{
	struct tcptimerlist *listp = &tcp_timer_list;

	FUNC5(tp->t_inpcb->inp_socket);
	if (!(FUNC2(tp))) {
		return;
	}
	FUNC3(listp->mtx);

	/* Check if pcb is on timer list again after acquiring the lock */
	if (!(FUNC2(tp))) {
		FUNC4(listp->mtx);
		return;
	}

	if (listp->next_te != NULL && listp->next_te == &tp->tentry)
		listp->next_te = FUNC0(&tp->tentry, le);

	FUNC1(&tp->tentry, le);
	tp->t_flags &= ~(TF_TIMER_ONLIST);

	listp->entries--;

	tp->tentry.le.le_next = NULL;
	tp->tentry.le.le_prev = NULL;
	FUNC4(listp->mtx);
}