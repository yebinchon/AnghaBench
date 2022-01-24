#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct tcpcb {TYPE_4__* t_inpcb; } ;
struct inpcbinfo {int /*<<< orphan*/  ipi_lock; } ;
struct TYPE_6__ {TYPE_1__* inp_socket; } ;
struct TYPE_5__ {int so_options; } ;

/* Variables and functions */
 int /*<<< orphan*/  INPCB_TIMER_LAZY ; 
 int SO_NOWAKEFROMSLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct tcpcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct inpcbinfo tcbinfo ; 

void
FUNC9(struct tcpcb *tp, uint32_t delay)
{
	struct inpcbinfo *pcbinfo = &tcbinfo;
	if (tp->t_inpcb->inp_socket->so_options & SO_NOWAKEFROMSLEEP)
		FUNC7(tp->t_inpcb->inp_socket);

	/* 19182803: Notify nstat that connection is closing before waiting. */
	FUNC5(tp->t_inpcb);

	if (!FUNC4(pcbinfo->ipi_lock)) {
		FUNC8(tp->t_inpcb->inp_socket, 0);
		FUNC3(pcbinfo->ipi_lock);
		FUNC6(tp->t_inpcb->inp_socket, 0);
	}
	FUNC0(tp, delay);
	FUNC2(pcbinfo->ipi_lock);

	FUNC1(pcbinfo, INPCB_TIMER_LAZY);
}