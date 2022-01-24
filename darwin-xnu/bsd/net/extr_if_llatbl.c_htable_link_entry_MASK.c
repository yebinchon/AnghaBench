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
typedef  size_t uint32_t ;
struct lltable {size_t (* llt_hash ) (struct llentry*,int /*<<< orphan*/ ) ;struct llentries* lle_head; int /*<<< orphan*/  llt_hsize; int /*<<< orphan*/  llt_af; int /*<<< orphan*/  llt_ifp; } ;
struct llentry {int la_flags; struct llentries* lle_head; struct lltable* lle_tbl; } ;
struct llentries {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct llentries*,struct llentry*,int /*<<< orphan*/ ) ; 
 int LLE_LINKED ; 
 int /*<<< orphan*/  lle_next ; 
 size_t FUNC2 (struct llentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct lltable *llt, struct llentry *lle)
{
	struct llentries *lleh;
	uint32_t hashidx;

	if ((lle->la_flags & LLE_LINKED) != 0)
		return;

	FUNC0(llt->llt_ifp, llt->llt_af);

	hashidx = llt->llt_hash(lle, llt->llt_hsize);
	lleh = &llt->lle_head[hashidx];

	lle->lle_tbl  = llt;
	lle->lle_head = lleh;
	lle->la_flags |= LLE_LINKED;
	FUNC1(lleh, lle, lle_next);
}