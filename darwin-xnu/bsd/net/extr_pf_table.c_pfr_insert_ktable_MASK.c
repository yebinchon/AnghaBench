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
struct pfr_ktable {TYPE_1__* pfrkt_root; } ;
struct TYPE_2__ {int pfrkt_flags; int /*<<< orphan*/ * pfrkt_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 size_t PFR_REFCNT_ANCHOR ; 
 int PFR_TFLAG_REFDANCHOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfr_ktable*) ; 
 int /*<<< orphan*/  pf_lock ; 
 int /*<<< orphan*/  pfr_ktable_cnt ; 
 int /*<<< orphan*/  pfr_ktablehead ; 
 int /*<<< orphan*/  pfr_ktables ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(struct pfr_ktable *kt)
{
	FUNC0(pf_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(pfr_ktablehead, &pfr_ktables, kt);
	pfr_ktable_cnt++;
	if (kt->pfrkt_root != NULL)
		if (!kt->pfrkt_root->pfrkt_refcnt[PFR_REFCNT_ANCHOR]++)
			FUNC2(kt->pfrkt_root,
			    kt->pfrkt_root->pfrkt_flags|PFR_TFLAG_REFDANCHOR);
}