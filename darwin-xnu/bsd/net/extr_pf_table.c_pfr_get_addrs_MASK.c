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
typedef  int /*<<< orphan*/  w ;
typedef  int /*<<< orphan*/  user_addr_t ;
struct pfr_walktree {int pfrw_free; int pfrw_flags; int /*<<< orphan*/  pfrw_addr; int /*<<< orphan*/  pfrw_op; } ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct TYPE_4__ {int (* rnh_walktree ) (TYPE_2__*,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int (* rnh_walktree ) (TYPE_1__*,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTTY ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFRW_GET_ADDRS ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_walktree*,int) ; 
 struct pfr_ktable* FUNC2 (struct pfr_table*) ; 
 scalar_t__ FUNC3 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfr_walktree ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct pfr_walktree*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct pfr_walktree*) ; 

int
FUNC7(struct pfr_table *tbl, user_addr_t addr, int *size,
	int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_walktree	 w;
	int			 rv;

	FUNC0(flags, 0);
	if (FUNC3(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC2(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_cnt > *size) {
		*size = kt->pfrkt_cnt;
		return (0);
	}

	FUNC1(&w, sizeof (w));
	w.pfrw_op = PFRW_GET_ADDRS;
	w.pfrw_addr = addr;
	w.pfrw_free = kt->pfrkt_cnt;
	w.pfrw_flags = flags;
	rv = kt->pfrkt_ip4->rnh_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
	if (!rv)
		rv = kt->pfrkt_ip6->rnh_walktree(kt->pfrkt_ip6,
		    pfr_walktree, &w);
	if (rv)
		return (rv);

	if (w.pfrw_free) {
		FUNC4("pfr_get_addrs: corruption detected (%d).\n",
		    w.pfrw_free);
		return (ENOTTY);
	}
	*size = kt->pfrkt_cnt;
	return (0);
}