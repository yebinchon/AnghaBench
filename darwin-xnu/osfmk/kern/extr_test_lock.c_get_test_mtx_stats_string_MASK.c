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
typedef  int /*<<< orphan*/  uint64_t ;
struct lck_mtx_test_stats_elem {int /*<<< orphan*/  lock; int /*<<< orphan*/  min; int /*<<< orphan*/  max; int /*<<< orphan*/  avg; int /*<<< orphan*/  tot; int /*<<< orphan*/  samples; } ;

/* Variables and functions */
 int TEST_MTX_MAX_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lck_mtx_test_stats_elem* lck_mtx_test_stats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char*,int) ; 
 int FUNC4 (char*,int,char*,...) ; 

int
FUNC5(
	char* buffer,
	int size)
{
	int string_off = 0;
	int ret = 0;

	ret = FUNC4(&buffer[string_off], size, "\n");
	size -= ret;
	string_off += ret;

	int i;
	for (i = 0; i < TEST_MTX_MAX_STATS; i++) {
		struct lck_mtx_test_stats_elem* stat = &lck_mtx_test_stats[i];

		ret = FUNC4(&buffer[string_off], size, "{ ");
		size -= ret;
		string_off += ret;

		FUNC1(&stat->lock);
		uint64_t time;

		ret = FUNC4(&buffer[string_off], size, "samples %llu, ", stat->samples);
		size -= ret;
		string_off += ret;

		FUNC0(stat->tot, &time);
		ret = FUNC4(&buffer[string_off], size, "tot %llu ns, ", time);
		size -= ret;
		string_off += ret;

		FUNC0(stat->avg, &time);
		ret = FUNC4(&buffer[string_off], size, "avg %llu ns, ", time);
		size -= ret;
		string_off += ret;

		FUNC0(stat->max, &time);
		ret = FUNC4(&buffer[string_off], size, "max %llu ns, ", time);
		size -= ret;
		string_off += ret;

		FUNC0(stat->min, &time);
		ret = FUNC4(&buffer[string_off], size, "min %llu ns", time);
		size -= ret;
		string_off += ret;

		FUNC2(&stat->lock);

		ret = FUNC4(&buffer[string_off], size, " } ");
		size -= ret;
		string_off += ret;

		ret = FUNC3(i, &buffer[string_off], size);
		size -= ret;
		string_off += ret;

		ret = FUNC4(&buffer[string_off], size, "\n");
		size -= ret;
		string_off += ret;
	}

	return string_off;
}