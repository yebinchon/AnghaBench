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
typedef  int uint32_t ;
struct kperf_thread_snapshot {int kpthsn_flags; int kpthsn_io_tier; int /*<<< orphan*/  kpthsn_last_made_runnable_time; scalar_t__ kpthsn_suspend_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERF_TI_SNAPDATA ; 
 int /*<<< orphan*/  PERF_TI_SNAPDATA_32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct kperf_thread_snapshot *thsn)
{
	FUNC3(thsn != NULL);
#if defined(__LP64__)
	FUNC0(PERF_TI_SNAPDATA, thsn->kpthsn_flags | ((uint32_t)(thsn->kpthsn_suspend_count) << 8)
	                                              | (thsn->kpthsn_io_tier << 24),
	                           thsn->kpthsn_last_made_runnable_time);
#else
	BUF_DATA(PERF_TI_SNAPDATA_32, thsn->kpthsn_flags | ((uint32_t)(thsn->kpthsn_suspend_count) << 8)
	                                                 | (thsn->kpthsn_io_tier << 24),
	                              UPPER_32(thsn->kpthsn_last_made_runnable_time),
	                              LOWER_32(thsn->kpthsn_last_made_runnable_time));
#endif /* defined(__LP64__) */
}