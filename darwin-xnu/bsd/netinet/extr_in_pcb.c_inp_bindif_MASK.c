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
struct inpcb {int /*<<< orphan*/  inp_route; int /*<<< orphan*/  inp_flags; struct ifnet* inp_boundifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned int IFSCOPE_NONE ; 
 int /*<<< orphan*/  INP_BOUND_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ if_index ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(struct inpcb *inp, unsigned int ifscope, struct ifnet **pifp)
{
	struct ifnet *ifp = NULL;

	FUNC3();
	if ((ifscope > (unsigned)if_index) || (ifscope != IFSCOPE_NONE &&
	    (ifp = ifindex2ifnet[ifscope]) == NULL)) {
		FUNC2();
		return (ENXIO);
	}
	FUNC2();

	FUNC1(ifp != NULL || ifscope == IFSCOPE_NONE);

	/*
	 * A zero interface scope value indicates an "unbind".
	 * Otherwise, take in whatever value the app desires;
	 * the app may already know the scope (or force itself
	 * to such a scope) ahead of time before the interface
	 * gets attached.  It doesn't matter either way; any
	 * route lookup from this point on will require an
	 * exact match for the embedded interface scope.
	 */
	inp->inp_boundifp = ifp;
	if (inp->inp_boundifp == NULL)
		inp->inp_flags &= ~INP_BOUND_IF;
	else
		inp->inp_flags |= INP_BOUND_IF;

	/* Blow away any cached route in the PCB */
	FUNC0(&inp->inp_route);

	if (pifp != NULL)
		*pifp = ifp;

	return (0);
}