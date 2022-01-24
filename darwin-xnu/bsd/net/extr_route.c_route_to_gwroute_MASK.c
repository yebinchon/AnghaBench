#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {scalar_t__ rmx_expire; } ;
struct rtentry {int rt_flags; scalar_t__ rt_expire; TYPE_2__ rt_rmx; struct rtentry* rt_parent; TYPE_3__* rt_gateway; struct rtentry* rt_gwroute; TYPE_1__* rt_ifp; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int boolean_t ;
struct TYPE_7__ {int /*<<< orphan*/  sa_len; } ;
struct TYPE_5__ {unsigned int if_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHOSTDOWN ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int RTF_GATEWAY ; 
 int RTF_REJECT ; 
 int RTF_UP ; 
 int RTF_WASCLONED ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sockaddr*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC16 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtentry*,struct rtentry*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtentry*,int /*<<< orphan*/ ,struct rtentry*) ; 
 struct rtentry* FUNC19 (struct sockaddr*,int,int /*<<< orphan*/ ,unsigned int) ; 
 struct rtentry* FUNC20 (struct sockaddr*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC22 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

errno_t
FUNC24(const struct sockaddr *net_dest, struct rtentry *hint0,
    struct rtentry **out_route)
{
	uint64_t timenow;
	struct rtentry *rt = hint0, *hint = hint0;
	errno_t error = 0;
	unsigned int ifindex;
	boolean_t gwroute;

	*out_route = NULL;

	if (rt == NULL)
		return (0);

	/*
	 * Next hop determination.  Because we may involve the gateway route
	 * in addition to the original route, locking is rather complicated.
	 * The general concept is that regardless of whether the route points
	 * to the original route or to the gateway route, this routine takes
	 * an extra reference on such a route.  This extra reference will be
	 * released at the end.
	 *
	 * Care must be taken to ensure that the "hint0" route never gets freed
	 * via rtfree(), since the caller may have stored it inside a struct
	 * route with a reference held for that placeholder.
	 */
	FUNC6(rt);
	ifindex = rt->rt_ifp->if_index;
	FUNC2(rt);
	if (!(rt->rt_flags & RTF_UP)) {
		FUNC8(rt);
		FUNC9(rt);
		/* route is down, find a new one */
		hint = rt = FUNC19((struct sockaddr *)
		    (size_t)net_dest, 1, 0, ifindex);
		if (hint != NULL) {
			FUNC6(rt);
			ifindex = rt->rt_ifp->if_index;
		} else {
			FUNC23(EHOSTUNREACH);
		}
	}

	/*
	 * We have a reference to "rt" by now; it will either
	 * be released or freed at the end of this routine.
	 */
	FUNC5(rt);
	if ((gwroute = (rt->rt_flags & RTF_GATEWAY))) {
		struct rtentry *gwrt = rt->rt_gwroute;
		struct sockaddr_storage ss;
		struct sockaddr *gw = (struct sockaddr *)&ss;

		FUNC10(rt == hint);
		FUNC2(hint);

		/* If there's no gateway rt, look it up */
		if (gwrt == NULL) {
			FUNC11(rt->rt_gateway, gw, FUNC0(sizeof (ss),
			    rt->rt_gateway->sa_len));
			FUNC9(rt);
			goto lookup;
		}
		/* Become a regular mutex */
		FUNC3(rt);

		/*
		 * Take gwrt's lock while holding route's lock;
		 * this is okay since gwrt never points back
		 * to "rt", so no lock ordering issues.
		 */
		FUNC6(gwrt);
		if (!(gwrt->rt_flags & RTF_UP)) {
			rt->rt_gwroute = NULL;
			FUNC9(gwrt);
			FUNC11(rt->rt_gateway, gw, FUNC0(sizeof (ss),
			    rt->rt_gateway->sa_len));
			FUNC9(rt);
			FUNC21(gwrt);
lookup:
			FUNC13(rnh_lock);
			gwrt = FUNC20(gw, 1, 0, ifindex);

			FUNC4(rt);
			/*
			 * Bail out if the route is down, no route
			 * to gateway, circular route, or if the
			 * gateway portion of "rt" has changed.
			 */
			if (!(rt->rt_flags & RTF_UP) || gwrt == NULL ||
			    gwrt == rt || !FUNC12(gw, rt->rt_gateway)) {
				if (gwrt == rt) {
					FUNC8(gwrt);
					gwrt = NULL;
				}
				FUNC10(rt == hint);
				FUNC8(hint);
				hint = NULL;
				FUNC9(rt);
				if (gwrt != NULL)
					FUNC22(gwrt);
				FUNC14(rnh_lock);
				FUNC23(EHOSTUNREACH);
			}
			FUNC10(gwrt != NULL);
			/*
			 * Set gateway route; callee adds ref to gwrt;
			 * gwrt has an extra ref from rtalloc1() for
			 * this routine.
			 */
			FUNC18(rt, FUNC16(rt), gwrt);
			FUNC10(rt == hint);
			FUNC8(rt);	/* hint still holds a refcnt */
			FUNC9(rt);
			FUNC14(rnh_lock);
			rt = gwrt;
		} else {
			FUNC2(gwrt);
			FUNC9(gwrt);
			FUNC10(rt == hint);
			FUNC8(rt);	/* hint still holds a refcnt */
			FUNC9(rt);
			rt = gwrt;
		}
		FUNC10(rt == gwrt && rt != hint);

		/*
		 * This is an opportunity to revalidate the parent route's
		 * rt_gwroute, in case it now points to a dead route entry.
		 * Parent route won't go away since the clone (hint) holds
		 * a reference to it.  rt == gwrt.
		 */
		FUNC6(hint);
		if ((hint->rt_flags & (RTF_WASCLONED | RTF_UP)) ==
		    (RTF_WASCLONED | RTF_UP)) {
			struct rtentry *prt = hint->rt_parent;
			FUNC10(prt != NULL);

			FUNC3(hint);
			FUNC1(prt);
			FUNC9(hint);
			FUNC17(prt, rt);
			FUNC7(prt);
		} else {
			FUNC9(hint);
		}

		/* Clean up "hint" now; see notes above regarding hint0 */
		if (hint == hint0)
			FUNC7(hint);
		else
			FUNC21(hint);
		hint = NULL;

		/* rt == gwrt; if it is now down, give up */
		FUNC6(rt);
		if (!(rt->rt_flags & RTF_UP)) {
			FUNC9(rt);
			FUNC23(EHOSTUNREACH);
		}
	}

	if (rt->rt_flags & RTF_REJECT) {
		FUNC10(rt->rt_expire == 0 || rt->rt_rmx.rmx_expire != 0);
		FUNC10(rt->rt_expire != 0 || rt->rt_rmx.rmx_expire == 0);
		timenow = FUNC15();
		if (rt->rt_expire == 0 || timenow < rt->rt_expire) {
			FUNC9(rt);
			FUNC23(!gwroute ? EHOSTDOWN : EHOSTUNREACH);
		}
	}

	/* Become a regular mutex */
	FUNC3(rt);

	/* Caller is responsible for cleaning up "rt" */
	*out_route = rt;
	return (0);

bad:
	/* Clean up route (either it is "rt" or "gwrt") */
	if (rt != NULL) {
		FUNC6(rt);
		if (rt == hint0) {
			FUNC8(rt);
			FUNC9(rt);
		} else {
			FUNC9(rt);
			FUNC21(rt);
		}
	}
	return (error);
}