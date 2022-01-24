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
struct socket {int so_state; int /*<<< orphan*/  so_timeo; int /*<<< orphan*/  so_incqlen; int /*<<< orphan*/  so_comp; int /*<<< orphan*/  so_incomp; struct socket* so_head; TYPE_1__* so_proto; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/ * pr_getlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_RCONN ; 
 int /*<<< orphan*/  EV_WCONN ; 
 int SO_FILT_HINT_CONNECTED ; 
 int SO_FILT_HINT_CONNINFO_UPDATED ; 
 int SO_FILT_HINT_LOCKED ; 
 int SS_COMP ; 
 int SS_INCOMP ; 
 int SS_ISCONFIRMING ; 
 int SS_ISCONNECTED ; 
 int SS_ISCONNECTING ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct socket*) ; 
 int /*<<< orphan*/  so_list ; 
 int /*<<< orphan*/  FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  sock_evt_connected ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(struct socket *so)
{
	so->so_state &= ~(SS_ISCONNECTING|SS_ISDISCONNECTING|SS_ISCONFIRMING);
	so->so_state |= SS_ISCONNECTED;

	FUNC9(so, 0);

	FUNC3(so, sock_evt_connected, NULL);

	if (so->so_head != NULL && (so->so_state & SS_INCOMP)) {
		struct socket *head = so->so_head;
		int locked = 0;
		
		/*
		 * Enforce lock order when the protocol has per socket locks
		 */
		if (head->so_proto->pr_getlock != NULL) {
			FUNC6(head, 1);
			FUNC4(head, so);
			locked = 1;
		}
		if (so->so_head == head && (so->so_state & SS_INCOMP)) {
			so->so_state &= ~SS_INCOMP;
			so->so_state |= SS_COMP;
			FUNC1(&head->so_incomp, so, so_list);
			FUNC0(&head->so_comp, so, so_list);
			head->so_incqlen--;

			/*
			 * We have to release the accept list in
			 * case a socket callback calls sock_accept()
			 */
			if (locked != 0) {
				FUNC5(head);
				FUNC7(so, 0);
			}
			FUNC2(head, 0, EV_RCONN);
			FUNC10(head);
			FUNC13((caddr_t)&head->so_timeo);

			if (locked != 0) {
				FUNC7(head, 1);
				FUNC6(so, 0);
			}
		} else if (locked != 0) {
			FUNC5(head);
			FUNC7(head, 1);
		}
	} else {
		FUNC2(so, 0, EV_WCONN);
		FUNC12((caddr_t)&so->so_timeo);
		FUNC10(so);
		FUNC11(so);
		FUNC8(so, SO_FILT_HINT_LOCKED | SO_FILT_HINT_CONNECTED |
		    SO_FILT_HINT_CONNINFO_UPDATED);
	}
}