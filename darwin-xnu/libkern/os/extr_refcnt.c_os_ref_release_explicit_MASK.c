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
struct os_refgrp {int dummy; } ;
struct os_refcnt {int /*<<< orphan*/  ref_count; struct os_refgrp* ref_group; } ;
typedef  scalar_t__ os_ref_count_t ;
typedef  int /*<<< orphan*/  memory_order ;

/* Variables and functions */
 int /*<<< orphan*/  REFLOG_RELEASE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct os_refcnt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct os_refgrp*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct os_refgrp*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct os_refgrp*,int) ; 

os_ref_count_t
FUNC7(struct os_refcnt *rc, memory_order release_order, memory_order dealloc_order)
{
#if OS_REFCNT_DEBUG
	/*
	 * Care not to use 'rc' after the decrement because it might be deallocated
	 * under us.
	 */
	struct os_refgrp *grp = rc->ref_group;
	ref_log_op(grp, (void *)rc, REFLOG_RELEASE);
#endif

	os_ref_count_t val = FUNC1(&rc->ref_count, 1, release_order);
	FUNC3(rc, val);
	if (FUNC0(--val == 0)) {
		FUNC2(&rc->ref_count, dealloc_order);
#if OS_REFCNT_DEBUG
		ref_log_drop(grp, (void *)rc); /* rc is only used as an identifier */
#endif
	}

#if OS_REFCNT_DEBUG
	ref_release_group(grp, !val);
#endif

	return val;
}