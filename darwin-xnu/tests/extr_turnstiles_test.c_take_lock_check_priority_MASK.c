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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void *
FUNC7(void * arg)
{
	int old_pri = FUNC1(FUNC2());
	int unboosted_pri;
	int boosted_pri;
	int after_unlock_pri;
	uint64_t tid;
	int type = (int)arg;

	FUNC3(NULL, &tid);

	FUNC0(old_pri, 37, "thread(%llu) priority before acquiring the lock is %d\n", tid, old_pri);

	/* Take the test lock */
	FUNC5(type);

	unboosted_pri =  FUNC1(FUNC2());
	FUNC0(unboosted_pri, 37, "thread(%llu) priority after acquiring the lock (uncontended) is %d\n", tid, unboosted_pri);

	FUNC4(8);

	/* Check for elevated priority */
	boosted_pri =  FUNC1(FUNC2());
	FUNC0(boosted_pri, 47, "thread(%llu) priority after contention by 47 thread is %d\n", tid, boosted_pri);

	/* Drop the lock */
	FUNC6(type);

	/* Check for regular priority */
	after_unlock_pri =  FUNC1(FUNC2());
	FUNC0(after_unlock_pri, 37, "thread(%llu) priority after dropping lock is %d\n", tid, after_unlock_pri);

	return NULL;
}