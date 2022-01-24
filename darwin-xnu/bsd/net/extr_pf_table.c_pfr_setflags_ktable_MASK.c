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
struct pfr_ktable {int pfrkt_flags; struct pfr_ktable* pfrkt_shadow; scalar_t__ pfrkt_cnt; struct pfr_ktable* pfrkt_root; int /*<<< orphan*/ * pfrkt_refcnt; } ;
struct pfr_kentryworkq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 size_t PFR_REFCNT_ANCHOR ; 
 int PFR_TFLAG_ACTIVE ; 
 int PFR_TFLAG_INACTIVE ; 
 int PFR_TFLAG_PERSIST ; 
 int PFR_TFLAG_REFDANCHOR ; 
 int PFR_TFLAG_REFERENCED ; 
 int PFR_TFLAG_SETMASK ; 
 int PFR_TFLAG_USRMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfr_ktable*) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  FUNC2 (struct pfr_ktable*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_ktable*,struct pfr_kentryworkq*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfr_ktable_cnt ; 
 int /*<<< orphan*/  pfr_ktablehead ; 
 int /*<<< orphan*/  pfr_ktables ; 
 int /*<<< orphan*/  FUNC4 (struct pfr_ktable*,struct pfr_kentryworkq*) ; 

__attribute__((used)) static void
FUNC5(struct pfr_ktable *kt, int newf)
{
	struct pfr_kentryworkq	addrq;

	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	if (!(newf & PFR_TFLAG_REFERENCED) &&
	    !(newf & PFR_TFLAG_PERSIST))
		newf &= ~PFR_TFLAG_ACTIVE;
	if (!(newf & PFR_TFLAG_ACTIVE))
		newf &= ~PFR_TFLAG_USRMASK;
	if (!(newf & PFR_TFLAG_SETMASK)) {
		FUNC1(pfr_ktablehead, &pfr_ktables, kt);
		if (kt->pfrkt_root != NULL)
			if (!--kt->pfrkt_root->pfrkt_refcnt[PFR_REFCNT_ANCHOR])
				FUNC5(kt->pfrkt_root,
				    kt->pfrkt_root->pfrkt_flags &
				    ~PFR_TFLAG_REFDANCHOR);
		FUNC2(kt, 1);
		pfr_ktable_cnt--;
		return;
	}
	if (!(newf & PFR_TFLAG_ACTIVE) && kt->pfrkt_cnt) {
		FUNC3(kt, &addrq, NULL, 0);
		FUNC4(kt, &addrq);
	}
	if (!(newf & PFR_TFLAG_INACTIVE) && kt->pfrkt_shadow != NULL) {
		FUNC2(kt->pfrkt_shadow, 1);
		kt->pfrkt_shadow = NULL;
	}
	kt->pfrkt_flags = newf;
}