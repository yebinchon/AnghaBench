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
struct unpcb {int unp_flags; int /*<<< orphan*/  unp_mtx; struct unpcb* unp_conn; int /*<<< orphan*/  unp_peercred; int /*<<< orphan*/  unp_refs; } ;
struct socket {int so_type; scalar_t__ so_usecount; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct unpcb*,int /*<<< orphan*/ ) ; 
#define  SOCK_DGRAM 129 
#define  SOCK_STREAM 128 
 int UNP_HAVEPC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 struct unpcb* FUNC9 (struct socket*) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*,struct socket*) ; 
 int /*<<< orphan*/  unp_reflink ; 

int
FUNC11(struct socket *so, struct socket *so2)
{
	struct unpcb *unp = FUNC9(so);
	struct unpcb *unp2;

	if (so2->so_type != so->so_type)
		return (EPROTOTYPE);

	unp2 = FUNC9(so2);

	FUNC0(&unp->unp_mtx, LCK_MTX_ASSERT_OWNED);
	FUNC0(&unp2->unp_mtx, LCK_MTX_ASSERT_OWNED);

	/* Verify both sockets are still opened */
	if (unp == 0 || unp2 == 0)
		return (EINVAL);

	unp->unp_conn = unp2;
	so2->so_usecount++;

	switch (so->so_type) {

	case SOCK_DGRAM:
		FUNC1(&unp2->unp_refs, unp, unp_reflink);

		if (so != so2) {
			/* Avoid lock order reversals due to drop/acquire in soisconnected. */
 			/* Keep an extra reference on so2 that will be dropped
			 * soon after getting the locks in order
			 */
			FUNC7(so2, 0);
			FUNC8(so);
			FUNC10(so, so2);
			FUNC2(so2->so_usecount > 0);
			so2->so_usecount--;
		} else {
			FUNC8(so);
		}

		break;

	case SOCK_STREAM:
		/* This takes care of socketpair */
		if (!(unp->unp_flags & UNP_HAVEPC) &&
		    !(unp2->unp_flags & UNP_HAVEPC)) {
			FUNC3(FUNC4(), &unp->unp_peercred);
			unp->unp_flags |= UNP_HAVEPC;

			FUNC3(FUNC4(), &unp2->unp_peercred);
			unp2->unp_flags |= UNP_HAVEPC;
		}
		unp2->unp_conn = unp;
		so->so_usecount++;

		/* Avoid lock order reversals due to drop/acquire in soisconnected. */
		FUNC7(so, 0);
		FUNC8(so2);

		/* Keep an extra reference on so2, that will be dropped soon after
		 * getting the locks in order again.
		 */
		FUNC7(so2, 0);

		FUNC6(so, 0);
		FUNC8(so);

		FUNC10(so, so2);
		/* Decrement the extra reference left before */
		FUNC2(so2->so_usecount > 0);
		so2->so_usecount--;
		break;

	default:
		FUNC5("unknown socket type %d in unp_connect2", so->so_type);
	}
	FUNC0(&unp->unp_mtx, LCK_MTX_ASSERT_OWNED);
	FUNC0(&unp2->unp_mtx, LCK_MTX_ASSERT_OWNED);
	return (0);
}