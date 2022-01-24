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
struct nd_opt_nonce {int nd_opt_nonce_len; int /*<<< orphan*/ * nd_opt_nonce; } ;
struct ifaddr {int /*<<< orphan*/  ifa_ifp; } ;
struct TYPE_4__ {struct dadq* tqe_next; } ;
struct dadq {int /*<<< orphan*/  dad_ns_lcount; int /*<<< orphan*/ * dad_nonce; struct ifaddr* dad_ifa; TYPE_1__ dad_list; } ;
struct TYPE_6__ {struct dadq* tqh_first; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip6s_dad_loopcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC1 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC2 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddr*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int ND_OPT_NONCE_LEN ; 
 int /*<<< orphan*/  dad6_mutex ; 
 TYPE_3__ dadq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ ip6stat ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dadq *
FUNC10(struct ifaddr *ifa, struct nd_opt_nonce *nonce)
{
	struct dadq *dp;

	FUNC6(dad6_mutex);
	for (dp = dadq.tqh_first; dp; dp = dp->dad_list.tqe_next) {
		FUNC1(dp);
		if (dp->dad_ifa != ifa) {
			FUNC2(dp);
			continue;
		}

		/*
		 * Skip if the nonce matches the received one.
		 * +2 in the length is required because of type and
		 * length fields are included in a header.
		 */
		if (nonce != NULL &&
		    nonce->nd_opt_nonce_len == (ND_OPT_NONCE_LEN + 2) / 8 &&
		    FUNC8(&nonce->nd_opt_nonce[0], &dp->dad_nonce[0],
		    ND_OPT_NONCE_LEN) == 0) {
			FUNC9((LOG_ERR, "%s: a looped back NS message is "
			    "detected during DAD for %s. Ignoring.\n",
			    FUNC4(ifa->ifa_ifp),
			    FUNC5(FUNC3(ifa))));
			dp->dad_ns_lcount++;
			++ip6stat.ip6s_dad_loopcount;
			FUNC2(dp);
			continue;
		}

		FUNC0(dp);
		FUNC2(dp);
		break;
	}
	FUNC7(dad6_mutex);
	return (dp);
}