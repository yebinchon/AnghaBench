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
struct inpcb {int inp_flags; struct ifnet* inp_boundifp; } ;
struct ifnet {int if_eflags; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IFEF_RESTRICTED_RECV ; 
 scalar_t__ FUNC0 (struct ifnet*) ; 
 scalar_t__ FUNC1 (struct ifnet*) ; 
 scalar_t__ FUNC2 (struct ifnet*) ; 
 scalar_t__ FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcb*) ; 
 int INP_BOUND_IF ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 
 scalar_t__ FUNC6 (struct inpcb*) ; 
 scalar_t__ FUNC7 (struct inpcb*) ; 
 int INP_RECV_ANYIF ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sorestrictrecv ; 

__attribute__((used)) static boolean_t
FUNC9(struct inpcb *inp, struct ifnet *ifp)
{
	FUNC8(inp != NULL);

	/*
	 * Inbound restrictions.
	 */
	if (!sorestrictrecv)
		return (FALSE);

	if (ifp == NULL)
		return (FALSE);

	if (FUNC1(ifp) && FUNC6(inp))
		return (TRUE);

	if (FUNC2(ifp) && FUNC7(inp))
		return (TRUE);

	if (FUNC0(ifp) && !FUNC4(inp))
		return (TRUE);

	if (!(ifp->if_eflags & IFEF_RESTRICTED_RECV))
		return (FALSE);

	if (inp->inp_flags & INP_RECV_ANYIF)
		return (FALSE);

	if ((inp->inp_flags & INP_BOUND_IF) && inp->inp_boundifp == ifp)
		return (FALSE);

	if (FUNC3(ifp) && !FUNC5(inp))
		return (TRUE);

	return (TRUE);
}