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
struct unpcb {scalar_t__ rw_thrcount; int /*<<< orphan*/  unp_flags; } ;
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNP_DONTDISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 struct unpcb* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct unpcb*) ; 

__attribute__((used)) static void
FUNC4(struct socket *so, struct socket *conn_so)
{
	if (so < conn_so) {
		FUNC0(conn_so, 1);
	} else {
		struct unpcb *unp = FUNC2(so);
		unp->unp_flags |= UNP_DONTDISCONNECT;
		unp->rw_thrcount++;
		FUNC1(so, 0);

		/* Get the locks in the correct order */
		FUNC0(conn_so, 1);
		FUNC0(so, 0);
		unp->rw_thrcount--;
		if (unp->rw_thrcount == 0) {
			unp->unp_flags &= ~UNP_DONTDISCONNECT;
			FUNC3(unp);
		}
	}
}