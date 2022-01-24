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
typedef  int /*<<< orphan*/  u_int64_t ;
struct pfr_walktree {int pfrw_free; int pfrw_flags; int /*<<< orphan*/  pfrw_astats; int /*<<< orphan*/  pfrw_op; } ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_4__ {int (* rnh_walktree ) (TYPE_2__*,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int (* rnh_walktree ) (TYPE_1__*,int /*<<< orphan*/ ,struct pfr_walktree*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTTY ; 
 int ESRCH ; 
 int /*<<< orphan*/  PFRW_GET_ASTATS ; 
 int /*<<< orphan*/  PFR_FLAG_ATOMIC ; 
 int PFR_FLAG_CLSTATS ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_walktree*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentryworkq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_ktable*,struct pfr_kentryworkq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pfr_ktable* FUNC5 (struct pfr_table*) ; 
 scalar_t__ FUNC6 (struct pfr_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfr_walktree ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,struct pfr_walktree*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct pfr_walktree*) ; 

int
FUNC10(struct pfr_table *tbl, user_addr_t addr, int *size,
	int flags)
{
	struct pfr_ktable	*kt;
	struct pfr_walktree	 w;
	struct pfr_kentryworkq	 workq;
	int			 rv;
	u_int64_t		 tzero = FUNC2();

	/* XXX PFR_FLAG_CLSTATS disabled */
	FUNC0(flags, PFR_FLAG_ATOMIC);
	if (FUNC6(tbl, 0, 0))
		return (EINVAL);
	kt = FUNC5(tbl);
	if (kt == NULL || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (ESRCH);
	if (kt->pfrkt_cnt > *size) {
		*size = kt->pfrkt_cnt;
		return (0);
	}

	FUNC1(&w, sizeof (w));
	w.pfrw_op = PFRW_GET_ASTATS;
	w.pfrw_astats = addr;
	w.pfrw_free = kt->pfrkt_cnt;
	w.pfrw_flags = flags;
	rv = kt->pfrkt_ip4->rnh_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
	if (!rv)
		rv = kt->pfrkt_ip6->rnh_walktree(kt->pfrkt_ip6,
		    pfr_walktree, &w);
	if (!rv && (flags & PFR_FLAG_CLSTATS)) {
		FUNC4(kt, &workq, NULL, 0);
		FUNC3(&workq, tzero, 0);
	}
	if (rv)
		return (rv);

	if (w.pfrw_free) {
		FUNC7("pfr_get_astats: corruption detected (%d).\n",
		    w.pfrw_free);
		return (ENOTTY);
	}
	*size = kt->pfrkt_cnt;
	return (0);
}