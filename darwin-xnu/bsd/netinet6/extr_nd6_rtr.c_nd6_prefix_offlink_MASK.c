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
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; void* sin6_family; } ;
struct sockaddr {int dummy; } ;
struct rtentry {int dummy; } ;
struct nd_prefix {int ndpr_stateflags; int ndpr_plen; scalar_t__ ndpr_prproxy_sols_cnt; int /*<<< orphan*/  ndpr_prproxy_sols; struct rtentry* ndpr_rt; struct sockaddr_in6 ndpr_prefix; int /*<<< orphan*/  ndpr_mask; struct ifnet* ndpr_ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {unsigned int if_index; } ;
typedef  int /*<<< orphan*/  sa6 ;
typedef  int /*<<< orphan*/  mask6 ;

/* Variables and functions */
 void* AF_INET6 ; 
 int EEXIST ; 
 unsigned int IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NDPRF_IFSCOPE ; 
 int NDPRF_ONLINK ; 
 int NDPRF_PRPROXY ; 
 int /*<<< orphan*/  FUNC1 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sockaddr_in6*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  FUNC15 (struct nd_prefix*,struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC16 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct rtentry*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proxy6_lock ; 
 int /*<<< orphan*/  FUNC19 (struct rtentry*) ; 
 int FUNC20 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ,struct rtentry**,unsigned int) ; 

int
FUNC21(struct nd_prefix *pr)
{
	int plen, error = 0, prproxy;
	struct ifnet *ifp = pr->ndpr_ifp;
	struct sockaddr_in6 sa6, mask6, prefix;
	struct rtentry *rt = NULL, *ndpr_rt = NULL;
	unsigned int ifscope;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	/* sanity check */
	FUNC2(pr);
	if ((pr->ndpr_stateflags & NDPRF_ONLINK) == 0) {
		FUNC18((LOG_ERR,
		    "nd6_prefix_offlink: %s/%d on %s scoped=%d is already "
		    "off-link\n", FUNC12(&pr->ndpr_prefix.sin6_addr),
		    pr->ndpr_plen, FUNC11(pr->ndpr_ifp),
		    (pr->ndpr_stateflags & NDPRF_IFSCOPE) ? 1 : 0));
		FUNC4(pr);
		return (EEXIST);
	}

	FUNC10(&sa6, sizeof (sa6));
	sa6.sin6_family = AF_INET6;
	sa6.sin6_len = sizeof (sa6);
	FUNC9(&pr->ndpr_prefix.sin6_addr, &sa6.sin6_addr,
	    sizeof (struct in6_addr));
	FUNC10(&mask6, sizeof (mask6));
	mask6.sin6_family = AF_INET6;
	mask6.sin6_len = sizeof (sa6);
	FUNC9(&pr->ndpr_mask, &mask6.sin6_addr, sizeof (struct in6_addr));
	prefix = pr->ndpr_prefix;
	plen = pr->ndpr_plen;
	if ((ndpr_rt = pr->ndpr_rt) != NULL)
		pr->ndpr_rt = NULL;
	FUNC1(pr);		/* keep reference for this routine */
	FUNC4(pr);

	ifscope = (pr->ndpr_stateflags & NDPRF_IFSCOPE) ?
	    ifp->if_index : IFSCOPE_NONE;

	error = FUNC20(RTM_DELETE, (struct sockaddr *)&sa6,
	    NULL, (struct sockaddr *)&mask6, 0, &rt, ifscope);

	if (rt != NULL) {
		/* report the route deletion to the routing socket. */
		FUNC6(rt);
		FUNC17(RTM_DELETE, rt);
		FUNC7(rt);
		FUNC19(rt);

	} else {
		FUNC18((LOG_ERR,
		    "nd6_prefix_offlink: failed to delete route: "
		    "%s/%d on %s, scoped %d, (errno = %d)\n",
		    FUNC12(&sa6.sin6_addr), plen, FUNC11(ifp),
		    (ifscope != IFSCOPE_NONE), error));
	}

	if (ndpr_rt != NULL)
		FUNC19(ndpr_rt);

	FUNC13(&proxy6_lock);

	FUNC2(pr);
	prproxy = (pr->ndpr_stateflags & NDPRF_PRPROXY);
	FUNC8(!prproxy || !(pr->ndpr_stateflags & NDPRF_IFSCOPE));
	pr->ndpr_stateflags &= ~(NDPRF_ONLINK | NDPRF_IFSCOPE | NDPRF_PRPROXY);
	if (pr->ndpr_prproxy_sols_cnt > 0) {
		FUNC8(prproxy);
		FUNC16(pr);
		FUNC8(pr->ndpr_prproxy_sols_cnt == 0);
		FUNC8(FUNC5(&pr->ndpr_prproxy_sols));
	}
	FUNC4(pr);

	/*
	 * If this was an upstream prefix, find the downstream ones and do
	 * some cleanups.  If this was a downstream prefix, the prefix route
	 * has been removed from the routing table above, but there may be
	 * other tasks to perform.
	 */
	FUNC15(pr, prproxy ? pr : NULL);

	FUNC3(pr);	/* release reference for this routine */
	FUNC14(&proxy6_lock);

	return (error);
}