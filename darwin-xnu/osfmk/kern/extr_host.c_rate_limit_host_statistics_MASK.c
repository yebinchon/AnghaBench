#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  host_info64_t ;
typedef  int /*<<< orphan*/  host_flavor_t ;
struct TYPE_6__ {scalar_t__ last_access; int current_requests; scalar_t__ max_requests; } ;
struct TYPE_5__ {int t_flags; } ;

/* Variables and functions */
 int FALSE ; 
 int HOST_STATISTICS_MAX_REQUESTS ; 
 int HOST_STATISTICS_MIN_REQUESTS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int TF_PLATFORM ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 TYPE_3__* g_host_stats_cache ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  host_statistics_lck ; 
 scalar_t__ host_statistics_time_window ; 
 TYPE_1__* kernel_task ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static bool
FUNC8(bool is_stat64, host_flavor_t flavor, host_info64_t info, mach_msg_type_number_t* count, kern_return_t* ret, int *pindex)
{
	task_t task = FUNC1();

	FUNC0(task != kernel_task);

	*ret = KERN_SUCCESS;

	/* Access control only for third party applications */
	if (task->t_flags & TF_PLATFORM) {
		return FALSE;
	}

	/* Rate limit to HOST_STATISTICS_MAX_REQUESTS queries for each HOST_STATISTICS_TIME_WINDOW window of time */
	bool rate_limited = FALSE;
	bool set_last_access = TRUE;

	/* there is a cache for every flavor */
	int index = FUNC3(is_stat64, flavor, count, ret);
	if (index == -1)
		goto out;

	*pindex = index;
	FUNC4(&host_statistics_lck);
	if (g_host_stats_cache[index].last_access > FUNC7() - host_statistics_time_window) {
		set_last_access = FALSE;
		if (g_host_stats_cache[index].current_requests++ >= g_host_stats_cache[index].max_requests) {
			rate_limited = TRUE;
			FUNC2(index, info, count);
		}
	}
	if (set_last_access) {
		g_host_stats_cache[index].current_requests = 1;
		/*
		 * select a random number of requests (included between HOST_STATISTICS_MIN_REQUESTS and HOST_STATISTICS_MAX_REQUESTS)
		 * to let query host_statistics.
		 * In this way it is not possible to infer looking at when the a cached copy changes if host_statistics was called on
		 * the provious window.
		 */
		g_host_stats_cache[index].max_requests = (FUNC6() % (HOST_STATISTICS_MAX_REQUESTS - HOST_STATISTICS_MIN_REQUESTS + 1)) + HOST_STATISTICS_MIN_REQUESTS;
		g_host_stats_cache[index].last_access = FUNC7();
	}
	FUNC5(&host_statistics_lck);
out:
	return rate_limited;
}