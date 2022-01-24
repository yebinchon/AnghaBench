#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
struct rtentry {int rt_flags; struct ifnet* rt_ifp; int /*<<< orphan*/  rt_gateway; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {struct in6_addr sin6_addr; } ;
struct route_in6 {struct rtentry* ro_rt; TYPE_3__ ro_dst; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; scalar_t__ ndpr_plen; struct ifnet* ndpr_ifp; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; int /*<<< orphan*/  ndpr_mask; } ;
struct ifnet {int /*<<< orphan*/  if_index; } ;
typedef  int /*<<< orphan*/  pr_addr ;
struct TYPE_5__ {struct nd_prefix* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFSCOPE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NDPRF_IFSCOPE ; 
 int NDPRF_ONLINK ; 
 int NDPRF_PRPROXY ; 
 int /*<<< orphan*/  FUNC1 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC3 (struct route_in6*) ; 
 int RTF_CLONING ; 
 int RTF_CONDEMNED ; 
 int RTF_PRCLONING ; 
 int RTF_PROXY ; 
 int /*<<< orphan*/  RTM_DELETE ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct in6_addr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__ nd_prefix ; 
 int /*<<< orphan*/  rnh_lock ; 
 int /*<<< orphan*/  FUNC15 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC16 (struct rtentry*) ; 
 struct rtentry* FUNC17 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC20(struct ifnet *ifp, struct route_in6 *ro6)
{
	struct in6_addr *dst6 = &ro6->ro_dst.sin6_addr;
	struct ifnet *fwd_ifp = NULL;
	struct nd_prefix *pr;
	struct rtentry *rt;

	if ((rt = ro6->ro_rt) != NULL) {
		FUNC4(rt);
		if (!(rt->rt_flags & RTF_PROXY) || rt->rt_ifp == ifp) {
			FUNC14((LOG_DEBUG, "%s: found incorrect prefix "
			    "proxy route for dst %s on %s\n", FUNC9(ifp),
			    FUNC11(dst6),
			    FUNC9(rt->rt_ifp)));
			FUNC5(rt);
			/* look it up below */
		} else {
			FUNC5(rt);
			/*
			 * The route is already marked with RTF_PRPROXY and
			 * it isn't pointing back to the inbound interface;
			 * optimistically return (see notes below).
			 */
			return;
		}
	}

	/*
	 * Find out where we should forward this packet to, by searching
	 * for another interface that is proxying for the prefix.  Our
	 * current implementation assumes that the proxied prefix is shared
	 * to no more than one downstream interfaces (typically a bridge
	 * interface).
	 */
	FUNC12(nd6_mutex);
	for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
		struct in6_addr pr_addr;
		struct nd_prefix *fwd;
		u_char pr_len;

		FUNC1(pr);
		if (!(pr->ndpr_stateflags & NDPRF_ONLINK) ||
		    !(pr->ndpr_stateflags & NDPRF_PRPROXY) ||
		    !FUNC0(&pr->ndpr_prefix.sin6_addr,
		    dst6, &pr->ndpr_mask)) {
			FUNC2(pr);
			continue;
		}

		FUNC7(!(pr->ndpr_stateflags & NDPRF_IFSCOPE));
		FUNC8(&pr->ndpr_prefix.sin6_addr, &pr_addr, sizeof (pr_addr));
		pr_len = pr->ndpr_plen;
		FUNC2(pr);

		for (fwd = nd_prefix.lh_first; fwd; fwd = fwd->ndpr_next) {
			FUNC1(fwd);
			if (!(fwd->ndpr_stateflags & NDPRF_ONLINK) ||
			    fwd->ndpr_ifp == ifp ||
			    fwd->ndpr_plen != pr_len ||
			    !FUNC10(&fwd->ndpr_prefix.sin6_addr,
			    &pr_addr, pr_len)) {
				FUNC2(fwd);
				continue;
			}

			fwd_ifp = fwd->ndpr_ifp;
			FUNC2(fwd);
			break;
		}
		break;
	}
	FUNC13(nd6_mutex);

	FUNC12(rnh_lock);
	FUNC3(ro6);

	/*
	 * Lookup a forwarding route; delete the route if it's incorrect,
	 * or return to caller if the correct one got created prior to
	 * our acquiring the rnh_lock.
	 */
	if ((rt = FUNC17(FUNC6(&ro6->ro_dst), 0,
	    RTF_CLONING | RTF_PRCLONING, IFSCOPE_NONE)) != NULL) {
		FUNC4(rt);
		if (rt->rt_ifp != fwd_ifp || !(rt->rt_flags & RTF_PROXY)) {
			rt->rt_flags |= RTF_CONDEMNED;
			FUNC5(rt);
			(void) FUNC19(RTM_DELETE, FUNC15(rt),
			    rt->rt_gateway, FUNC16(rt), rt->rt_flags, NULL);
			FUNC18(rt);
			rt = NULL;
		} else {
			FUNC14((LOG_DEBUG, "%s: found prefix proxy route "
			    "for dst %s\n", FUNC9(rt->rt_ifp),
			    FUNC11(dst6)));
			FUNC5(rt);
			ro6->ro_rt = rt;	/* refcnt held by rtalloc1 */
			FUNC13(rnh_lock);
			return;
		}
	}
	FUNC7(rt == NULL && ro6->ro_rt == NULL);

	/*
	 * Clone a route from the correct parent prefix route and return it.
	 */
	if (fwd_ifp != NULL && (rt = FUNC17(FUNC6(&ro6->ro_dst), 1,
	    RTF_PRCLONING, fwd_ifp->if_index)) != NULL) {
		FUNC4(rt);
		if (!(rt->rt_flags & RTF_PROXY)) {
			FUNC5(rt);
			FUNC18(rt);
			rt = NULL;
		} else {
			FUNC14((LOG_DEBUG, "%s: allocated prefix proxy "
			    "route for dst %s\n", FUNC9(rt->rt_ifp),
			    FUNC11(dst6)));
			FUNC5(rt);
			ro6->ro_rt = rt;	/* refcnt held by rtalloc1 */
		}
	}
	FUNC7(rt != NULL || ro6->ro_rt == NULL);

	if (fwd_ifp == NULL || rt == NULL) {
		FUNC14((LOG_ERR, "%s: failed to find forwarding prefix "
		    "proxy entry for dst %s\n", FUNC9(ifp),
		    FUNC11(dst6)));
	}
	FUNC13(rnh_lock);
}