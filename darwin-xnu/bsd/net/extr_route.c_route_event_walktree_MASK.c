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
struct rtentry {int rt_flags; struct rtentry* rt_gwroute; } ;
struct route_event {int /*<<< orphan*/  route_event_code; struct rtentry* rt; } ;
struct radix_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_GATEWAY ; 
 int RTPRF_OURS ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*,struct rtentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC4(struct radix_node *rn, void *arg)
{
	struct route_event *p_route_ev = (struct route_event *)arg;
	struct rtentry *rt = (struct rtentry *)rn;
	struct rtentry *gwrt = p_route_ev->rt;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(rt);

	/* Return if the entry is pending cleanup */
	if (rt->rt_flags & RTPRF_OURS) {
		FUNC2(rt);
		return (0);
	}

	/* Return if it is not an indirect route */
	if (!(rt->rt_flags & RTF_GATEWAY)) {
		FUNC2(rt);
		return (0);
	}

	if (rt->rt_gwroute != gwrt) {
		FUNC2(rt);
		return (0);
	}

	FUNC3(rt, gwrt, p_route_ev->route_event_code,
	    NULL, TRUE);
	FUNC2(rt);

	return (0);
}