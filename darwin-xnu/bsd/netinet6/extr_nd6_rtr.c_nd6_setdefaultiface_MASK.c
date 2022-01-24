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
struct ifnet {int dummy; } ;
typedef  struct ifnet* ifnet_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int if_index ; 
 char* FUNC2 (struct ifnet*) ; 
 struct ifnet** ifindex2ifnet ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int nd6_defifindex ; 
 struct ifnet* nd6_defifp ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 

int
FUNC10(
	int ifindex)
{
	int error = 0;
	ifnet_t def_ifp = NULL;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	FUNC4();
	if (ifindex < 0 || if_index < ifindex) {
		FUNC3();
		return (EINVAL);
	}
	def_ifp = ifindex2ifnet[ifindex];
	FUNC3();

	FUNC5(nd6_mutex);
	if (nd6_defifindex != ifindex) {
		struct ifnet *odef_ifp = nd6_defifp;

		nd6_defifindex = ifindex;
		if (nd6_defifindex > 0)
			nd6_defifp = def_ifp;
		else
			nd6_defifp = NULL;

		if (nd6_defifp != NULL)
			FUNC8((LOG_INFO, "%s: is now the default "
			    "interface (was %s)\n", FUNC2(nd6_defifp),
			    odef_ifp != NULL ? FUNC2(odef_ifp) : "NONE"));
		else
			FUNC8((LOG_INFO, "No default interface set\n"));

		/*
		 * If the Default Router List is empty, install a route
		 * to the specified interface as default or remove the default
		 * route when the default interface becomes canceled.
		 * The check for the queue is actually redundant, but
		 * we do this here to avoid re-install the default route
		 * if the list is NOT empty.
		 */
		if (odef_ifp != NULL) {
			FUNC1(odef_ifp);
		}

		if (nd6_defifp != NULL) {
			FUNC1(nd6_defifp);
			FUNC7(nd6_defifp);
		}

		/*
		 * Our current implementation assumes one-to-one mapping between
		 * interfaces and links, so it would be natural to use the
		 * default interface as the default link.
		 */
		FUNC9(nd6_defifp);
	}
	FUNC6(nd6_mutex);
	return (error);
}