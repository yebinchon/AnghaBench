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
struct rtentry {int rt_flags; int /*<<< orphan*/  rt_gateway; struct ifnet* rt_ifp; } ;
struct radix_node {int dummy; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int RTF_UP ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct radix_node *rn, void *arg)
{
	struct rtentry	*rt = (struct rtentry *)rn;
	struct ifnet	*ifp = arg;
	int		err;

	if (rt == NULL)
		return (0);
	/*
	 * Checking against RTF_UP protects against walktree
	 * recursion problems with cloned routes.
	 */
	FUNC0(rt);
	if (rt->rt_ifp == ifp && (rt->rt_flags & RTF_UP)) {
		/*
		 * Safe to drop rt_lock and use rt_key, rt_gateway,
		 * since holding rnh_lock here prevents another thread
		 * from calling rt_setgate() on this route.
		 */
		FUNC1(rt);
		err = FUNC5(RTM_DELETE, FUNC3(rt), rt->rt_gateway,
		    FUNC4(rt), rt->rt_flags, NULL);
		if (err) {
			FUNC2(LOG_WARNING, "if_rtdel: error %d\n", err);
		}
	} else {
		FUNC1(rt);
	}
	return (0);
}