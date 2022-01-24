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
typedef  scalar_t__ uint64_t ;
typedef  size_t uint ;
struct lck_mtx_test_stats_elem {int samples; int tot; int avg; scalar_t__ max; scalar_t__ min; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t TEST_MTX_MAX_STATS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  enabled ; 
 struct lck_mtx_test_stats_elem* lck_mtx_test_stats ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(
	uint64_t start,
	uint64_t end,
	uint type)
{
	if (FUNC1(&enabled) == TRUE) {
		FUNC0(type < TEST_MTX_MAX_STATS);
		FUNC0(start <= end);

		uint64_t elapsed = end - start;
		struct lck_mtx_test_stats_elem* stat = &lck_mtx_test_stats[type];

		FUNC2(&stat->lock);

		stat->samples++;
		stat->tot += elapsed;
		stat->avg = stat->tot / stat->samples;
		if (stat->max < elapsed)
			stat->max = elapsed;
		if (stat->min > elapsed)
			stat->min = elapsed;
		FUNC3(&stat->lock);
	}
}