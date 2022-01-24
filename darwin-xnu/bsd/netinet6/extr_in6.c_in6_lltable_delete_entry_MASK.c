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
struct lltable {int dummy; } ;
struct llentry {int /*<<< orphan*/  la_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct llentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLENTRY_DELETED ; 
 int /*<<< orphan*/  LLE_DELETED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  lle_event ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct llentry*) ; 

__attribute__((used)) static void
FUNC3(struct lltable *llt, struct llentry *lle)
{
#pragma unused(llt)
	lle->la_flags |= LLE_DELETED;
	FUNC0(NULL, lle_event, lle, LLENTRY_DELETED);
#ifdef DIAGNOSTIC
	log(LOG_INFO, "ifaddr cache = %p is deleted\n", lle);
#endif
	FUNC1(lle);
}