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
struct nd_defrouter {int /*<<< orphan*/  rtaddr; struct ifnet* ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_defrouter*) ; 
 struct nd_defrouter* FUNC5 (int /*<<< orphan*/ *) ; 
 struct nd_defrouter* FUNC6 (struct nd_defrouter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dr_entry ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  nd_defrouter ; 

struct nd_defrouter *
FUNC7(
	struct in6_addr *addr,
	struct ifnet *ifp)
{
	struct nd_defrouter *dr;

	FUNC1(nd6_mutex, LCK_MTX_ASSERT_OWNED);

	for (dr = FUNC5(&nd_defrouter); dr;
	    dr = FUNC6(dr, dr_entry)) {
		FUNC3(dr);
		if (dr->ifp == ifp && FUNC0(addr, &dr->rtaddr)) {
			FUNC2(dr);
			FUNC4(dr);
			return (dr);
		}
		FUNC4(dr);
	}

	return (NULL);		/* search failed */
}