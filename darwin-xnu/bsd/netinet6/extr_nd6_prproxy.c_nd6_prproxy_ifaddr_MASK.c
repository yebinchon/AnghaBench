#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; TYPE_3__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; int /*<<< orphan*/  ia_plen; TYPE_2__ ia_prefixmask; TYPE_1__ ia_addr; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  pr_mask ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_8__ {struct nd_prefix* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int NDPRF_ONLINK ; 
 int NDPRF_PRPROXY ; 
 int /*<<< orphan*/  FUNC3 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC4 (struct nd_prefix*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 TYPE_4__ nd_prefix ; 

boolean_t
FUNC9(struct in6_ifaddr *ia)
{
	struct nd_prefix *pr;
	struct in6_addr addr, pr_mask;
	u_int32_t pr_len;
	boolean_t proxied = FALSE;

	FUNC2(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);

	FUNC0(&ia->ia_ifa);
	FUNC5(&ia->ia_addr.sin6_addr, &addr, sizeof (addr));
	FUNC5(&ia->ia_prefixmask.sin6_addr, &pr_mask, sizeof (pr_mask));
	pr_len = ia->ia_plen;
	FUNC1(&ia->ia_ifa);

	FUNC7(nd6_mutex);
	for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
		FUNC3(pr);
		if ((pr->ndpr_stateflags & NDPRF_ONLINK) &&
		    (pr->ndpr_stateflags & NDPRF_PRPROXY) &&
		    FUNC6(&pr->ndpr_prefix.sin6_addr,
		    &addr, pr_len)) {
			FUNC4(pr);
			proxied = TRUE;
			break;
		}
		FUNC4(pr);
	}
	FUNC8(nd6_mutex);

	return (proxied);
}