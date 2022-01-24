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
struct os_refcnt {int /*<<< orphan*/  ref_group; int /*<<< orphan*/  ref_count; } ;
typedef  int /*<<< orphan*/  os_ref_count_t ;

/* Variables and functions */
 int /*<<< orphan*/  REFLOG_RETAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memory_order_relaxed ; 
 int /*<<< orphan*/  FUNC1 (struct os_refcnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct os_refcnt *rc)
{
	os_ref_count_t old = FUNC0(&rc->ref_count, 1, memory_order_relaxed);
	FUNC1(rc, old);

#if OS_REFCNT_DEBUG
	ref_retain_group(rc->ref_group);
	ref_log_op(rc->ref_group, (void *)rc, REFLOG_RETAIN);
#endif
}