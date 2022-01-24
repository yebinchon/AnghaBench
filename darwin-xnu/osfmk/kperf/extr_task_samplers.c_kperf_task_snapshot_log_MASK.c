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
struct kperf_task_snapshot {int kptksn_flags; int kptksn_suspend_count; int kptksn_pageins; int kptksn_user_time_in_terminated_threads; int kptksn_system_time_in_terminated_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  PERF_TK_SNAP_DATA ; 
 int /*<<< orphan*/  PERF_TK_SNAP_DATA1_32 ; 
 int /*<<< orphan*/  PERF_TK_SNAP_DATA2_32 ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct kperf_task_snapshot *tksn)
{
	FUNC5(tksn != NULL);

#if defined(__LP64__)
	FUNC0(PERF_TK_SNAP_DATA, tksn->kptksn_flags,
	         FUNC2(tksn->kptksn_suspend_count) |
	         FUNC1(tksn->kptksn_pageins),
	         tksn->kptksn_user_time_in_terminated_threads,
	         tksn->kptksn_system_time_in_terminated_threads);
#else
	BUF_DATA(PERF_TK_SNAP_DATA1_32, UPPER_32(tksn->kptksn_flags),
	                                LOWER_32(tksn->kptksn_flags),
	                                tksn->kptksn_suspend_count,
	                                tksn->kptksn_pageins);
	BUF_DATA(PERF_TK_SNAP_DATA2_32, UPPER_32(tksn->kptksn_user_time_in_terminated_threads),
	                                LOWER_32(tksn->kptksn_user_time_in_terminated_threads),
	                                UPPER_32(tksn->kptksn_system_time_in_terminated_threads),
	                                LOWER_32(tksn->kptksn_system_time_in_terminated_threads));
#endif /* defined(__LP64__) */
}