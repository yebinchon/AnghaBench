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
struct nd_prefix {scalar_t__ ndpr_ifp; scalar_t__ ndpr_plen; int ndpr_expire; TYPE_1__ ndpr_prefix; struct nd_prefix* ndpr_next; } ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;

/* Variables and functions */
 int ND6_PREFIX_EXPIRY_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC1 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC2 (struct nd_prefix*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 
 TYPE_2__ nd_prefix ; 

struct nd_prefix *
FUNC6(struct nd_prefix *pr, int nd6_prefix_expiry)
{
	struct nd_prefix *search;

	FUNC4(nd6_mutex);
	for (search = nd_prefix.lh_first; search; search = search->ndpr_next) {
		FUNC1(search);
		if (pr->ndpr_ifp == search->ndpr_ifp &&
		    pr->ndpr_plen == search->ndpr_plen &&
		    FUNC3(&pr->ndpr_prefix.sin6_addr,
		    &search->ndpr_prefix.sin6_addr, pr->ndpr_plen)) {
			if (nd6_prefix_expiry != ND6_PREFIX_EXPIRY_UNSPEC) {
				search->ndpr_expire = nd6_prefix_expiry;
			}
			FUNC0(search);
			FUNC2(search);
			break;
		}
		FUNC2(search);
	}
	FUNC5(nd6_mutex);

	return (search);
}