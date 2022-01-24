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
struct lltable {int /*<<< orphan*/  llt_match_prefix; int /*<<< orphan*/  llt_free_entry; int /*<<< orphan*/  llt_fill_sa_entry; int /*<<< orphan*/  llt_hash; int /*<<< orphan*/  llt_dump_entry; int /*<<< orphan*/  llt_delete_entry; int /*<<< orphan*/  llt_alloc_entry; int /*<<< orphan*/  llt_lookup; struct ifnet* llt_ifp; int /*<<< orphan*/  llt_af; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  IN_LLTBL_DEFAULT_HSIZE ; 
 int /*<<< orphan*/  in_lltable_alloc ; 
 int /*<<< orphan*/  in_lltable_delete_entry ; 
 int /*<<< orphan*/  in_lltable_dump_entry ; 
 int /*<<< orphan*/  in_lltable_fill_sa_entry ; 
 int /*<<< orphan*/  in_lltable_free_entry ; 
 int /*<<< orphan*/  in_lltable_hash ; 
 int /*<<< orphan*/  in_lltable_lookup ; 
 int /*<<< orphan*/  in_lltable_match_prefix ; 
 struct lltable* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lltable*) ; 

__attribute__((used)) static struct lltable *
FUNC2(struct ifnet *ifp)
{
	struct lltable *llt;

	llt = FUNC0(IN_LLTBL_DEFAULT_HSIZE);
	llt->llt_af = AF_INET;
	llt->llt_ifp = ifp;

	llt->llt_lookup = in_lltable_lookup;
	llt->llt_alloc_entry = in_lltable_alloc;
	llt->llt_delete_entry = in_lltable_delete_entry;
	llt->llt_dump_entry = in_lltable_dump_entry;
	llt->llt_hash = in_lltable_hash;
	llt->llt_fill_sa_entry = in_lltable_fill_sa_entry;
	llt->llt_free_entry = in_lltable_free_entry;
	llt->llt_match_prefix = in_lltable_match_prefix;
	FUNC1(llt);

	return (llt);
}