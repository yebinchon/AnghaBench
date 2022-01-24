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
struct sockaddr {int dummy; } ;
struct rtentry {int rt_flags; struct rtentry* rt_parent; struct rtentry* rt_gwroute; } ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int RTF_ROUTER ; 
 int RTF_WASCLONED ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 scalar_t__ FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 scalar_t__ FUNC7 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  rnh_lock ; 
 struct sockaddr* FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtentry*) ; 

void
FUNC11(struct rtentry *rt, struct sockaddr *dst, struct rtentry *gwrt)
{
	boolean_t gwrt_isrouter;

	FUNC0(rnh_lock, LCK_MTX_ASSERT_OWNED);
	FUNC4(rt);

	if (gwrt != NULL)
		FUNC1(gwrt);	/* for this routine */

	/*
	 * Get rid of existing gateway route; if rt_gwroute is already
	 * set to gwrt, this is slightly redundant (though safe since
	 * we held an extra ref above) but makes the code simpler.
	 */
	if (rt->rt_gwroute != NULL) {
		struct rtentry *ogwrt = rt->rt_gwroute;

		FUNC8(rt != ogwrt);	/* sanity check */
		rt->rt_gwroute = NULL;
		FUNC6(rt);
		FUNC10(ogwrt);
		FUNC3(rt);
		FUNC8(rt->rt_gwroute == NULL);
	}

	/*
	 * And associate the new gateway route.
	 */
	if ((rt->rt_gwroute = gwrt) != NULL) {
		FUNC1(gwrt);	/* for rt */

		if (rt->rt_flags & RTF_WASCLONED) {
			/* rt_parent might be NULL if rt is embryonic */
			gwrt_isrouter = (rt->rt_parent != NULL &&
			    FUNC7(FUNC9(rt->rt_parent)) &&
			    !FUNC2(rt->rt_parent));
		} else {
			gwrt_isrouter = (FUNC7(dst) && !FUNC2(rt));
		}

		/* If gwrt points to a default router, mark it accordingly */
		if (gwrt_isrouter && FUNC2(gwrt) &&
		    !(gwrt->rt_flags & RTF_ROUTER)) {
			FUNC3(gwrt);
			gwrt->rt_flags |= RTF_ROUTER;
			FUNC6(gwrt);
		}

		FUNC5(gwrt);	/* for this routine */
	}
}