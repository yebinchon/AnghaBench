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
struct TYPE_6__ {int sb_flags; int /*<<< orphan*/  sb_sel; } ;
struct TYPE_5__ {int sb_flags; int /*<<< orphan*/  sb_sel; } ;
struct socket {int so_flags; int so_state; void* so_event; TYPE_3__ so_snd; TYPE_2__ so_rcv; TYPE_1__* so_proto; struct socket* so_head; int /*<<< orphan*/  so_qlen; int /*<<< orphan*/  so_incqlen; int /*<<< orphan*/  so_incomp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pr_getlock; } ;

/* Variables and functions */
 int SB_SEL ; 
 int SB_SNDBYTE_CNT ; 
 int SB_UPCALL ; 
 int SOF_FLOW_DIVERT ; 
 int SOF_PCBCLEARING ; 
 int SS_COMP ; 
 int SS_INCOMP ; 
 int SS_NOFDREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct socket*) ; 
 int /*<<< orphan*/  so_list ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 void* sonullevent ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

void
FUNC11(struct socket *so, int dealloc)
{
	struct socket *head = so->so_head;

	/* Assume socket is locked */

	if (!(so->so_flags & SOF_PCBCLEARING) || !(so->so_state & SS_NOFDREF)) {
		FUNC3(&so->so_snd.sb_sel);
		FUNC3(&so->so_rcv.sb_sel);
		so->so_rcv.sb_flags &= ~(SB_SEL|SB_UPCALL);
		so->so_snd.sb_flags &= ~(SB_SEL|SB_UPCALL);
		so->so_event = sonullevent;
		return;
	}
	if (head != NULL) {
		/*
		 * Need to lock the listener when the protocol has
		 * per socket locks
		 */
		if (head->so_proto->pr_getlock != NULL) {
			FUNC6(head, 1);
			FUNC4(head, so);
		}
		if (so->so_state & SS_INCOMP) {
			so->so_state &= ~SS_INCOMP;
			FUNC0(&head->so_incomp, so, so_list);
			head->so_incqlen--;
			head->so_qlen--;
			so->so_head = NULL;

			if (head->so_proto->pr_getlock != NULL) {
				FUNC5(head);
				FUNC7(head, 1);
			}
		} else if (so->so_state & SS_COMP) {
			if (head->so_proto->pr_getlock != NULL) {
				FUNC5(head);
				FUNC7(head, 1);
			}
			/*
			 * We must not decommission a socket that's
			 * on the accept(2) queue.  If we do, then
			 * accept(2) may hang after select(2) indicated
			 * that the listening socket was ready.
			 */
			FUNC3(&so->so_snd.sb_sel);
			FUNC3(&so->so_rcv.sb_sel);
			so->so_rcv.sb_flags &= ~(SB_SEL|SB_UPCALL);
			so->so_snd.sb_flags &= ~(SB_SEL|SB_UPCALL);
			so->so_event = sonullevent;
			return;
		} else {
			if (head->so_proto->pr_getlock != NULL) {
				FUNC5(head);
			FUNC7(head, 1);
	}
			FUNC2("sofree: not queued\n");
		}
	}
	FUNC10(so);
	FUNC9(so);

#if FLOW_DIVERT
	if (so->so_flags & SOF_FLOW_DIVERT) {
		flow_divert_detach(so);
	}
#endif	/* FLOW_DIVERT */

	/* 3932268: disable upcall */
	so->so_rcv.sb_flags &= ~SB_UPCALL;
	so->so_snd.sb_flags &= ~(SB_UPCALL|SB_SNDBYTE_CNT);
	so->so_event = sonullevent;

	if (dealloc)
		FUNC8(so);
}