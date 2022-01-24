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
struct rtentry {int rt_flags; } ;
struct radix_node {int dummy; } ;
typedef  int /*<<< orphan*/  nstat_control_state ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rtentry*) ; 
 int /*<<< orphan*/  nstat_route_provider ; 
 int /*<<< orphan*/  rnh_lock ; 
 scalar_t__ FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 

__attribute__((used)) static int
FUNC7(
	struct radix_node	*rn,
	void				*context)
{
	errno_t	result = 0;
	struct rtentry *rt = (struct rtentry *)rn;
	nstat_control_state	*state	= (nstat_control_state*)context;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_OWNED);

	/* RTF_UP can't change while rnh_lock is held */
	if ((rt->rt_flags & RTF_UP) != 0)
	{
		/* Clear RTPRF_OURS if the route is still usable */
		FUNC2(rt);
		if (FUNC5(rt)) {
			FUNC1(rt);
			FUNC3(rt);
		} else {
			FUNC3(rt);
			rt = NULL;
		}

		/* Otherwise if RTF_CONDEMNED, treat it as if it were down */
		if (rt == NULL)
			return (0);

		result = FUNC4(0, state, &nstat_route_provider, rt);
		if (result != 0)
			FUNC6(rt);
	}

	return result;
}