#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtentry {struct llinfo_nd6* rt_llinfo; } ;
struct nd_prefix {unsigned int ndpr_genid; int /*<<< orphan*/  ndpr_advrtrs; } ;
struct nd_pfxrouter {TYPE_1__* router; } ;
struct llinfo_nd6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int stateflags; struct in6_addr rtaddr; struct in6_addr rtaddr_mapped; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 struct nd_pfxrouter* FUNC1 (int /*<<< orphan*/ *) ; 
 struct nd_pfxrouter* FUNC2 (struct nd_pfxrouter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct llinfo_nd6*) ; 
 int NDDRF_MAPPED ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC5 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC6 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct rtentry* FUNC12 (struct in6_addr*,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 int /*<<< orphan*/  pfr_entry ; 

__attribute__((used)) static struct nd_pfxrouter *
FUNC13(struct nd_prefix *pr)
{
	struct nd_pfxrouter *pfxrtr;
	struct rtentry *rt;
	struct llinfo_nd6 *ln;
	struct ifnet *ifp;
	struct in6_addr rtaddr;
	unsigned int genid;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);
	FUNC5(pr);

	genid = pr->ndpr_genid;
	pfxrtr = FUNC1(&pr->ndpr_advrtrs);
	while (pfxrtr) {
		ifp = pfxrtr->router->ifp;
		if (pfxrtr->router->stateflags & NDDRF_MAPPED)
			rtaddr = pfxrtr->router->rtaddr_mapped;
		else
			rtaddr = pfxrtr->router->rtaddr;

		FUNC6(pr);
		FUNC11(nd6_mutex);
		/* Callee returns a locked route upon success */
		if ((rt = FUNC12(&rtaddr, 0, ifp, 0)) != NULL) {
			FUNC7(rt);
			if ((ln = rt->rt_llinfo) != NULL &&
			    FUNC3(ln)) {
				FUNC8(rt);
				FUNC9(rt);
				FUNC10(nd6_mutex);
				FUNC4(pr);
				break;	/* found */
			}
			FUNC8(rt);
			FUNC9(rt);
		}
		FUNC10(nd6_mutex);
		FUNC4(pr);
		if (pr->ndpr_genid != genid) {
			pfxrtr = FUNC1(&pr->ndpr_advrtrs);
			genid = pr->ndpr_genid;
		} else
			pfxrtr = FUNC2(pfxrtr, pfr_entry);
	}
	FUNC5(pr);

	return (pfxrtr);

}