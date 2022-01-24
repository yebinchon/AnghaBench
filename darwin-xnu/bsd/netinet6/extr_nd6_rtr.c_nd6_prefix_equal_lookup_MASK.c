#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; int /*<<< orphan*/  ndpr_plen; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int NDPRF_IFSCOPE ; 
 int NDPRF_ONLINK ; 
 int /*<<< orphan*/  FUNC1 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC3 (struct nd_prefix*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 TYPE_2__ nd_prefix ; 

__attribute__((used)) static struct nd_prefix *
FUNC5(struct nd_prefix *pr, boolean_t primary_only)
{
	struct nd_prefix *opr;

	FUNC0(nd6_mutex, LCK_MTX_ASSERT_OWNED);

	for (opr = nd_prefix.lh_first; opr; opr = opr->ndpr_next) {
		if (opr == pr)
			continue;

		FUNC2(opr);
		if ((opr->ndpr_stateflags & NDPRF_ONLINK) == 0) {
			FUNC3(opr);
			continue;
		}
		if (opr->ndpr_plen == pr->ndpr_plen &&
		    FUNC4(&pr->ndpr_prefix.sin6_addr,
		    &opr->ndpr_prefix.sin6_addr, pr->ndpr_plen) &&
		    (!primary_only ||
		    !(opr->ndpr_stateflags & NDPRF_IFSCOPE))) {
			FUNC1(opr);
			FUNC3(opr);
			return (opr);
		}
		FUNC3(opr);
	}
	return (NULL);
}