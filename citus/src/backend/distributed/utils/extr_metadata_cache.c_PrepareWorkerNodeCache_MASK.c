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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int workerNodeHashValid ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC2(); /* ensure relevant callbacks are registered */

	/*
	 * Simulate a SELECT from pg_dist_node, ensure pg_dist_node doesn't change while our
	 * caller is using WorkerNodeHash.
	 */
	FUNC4(FUNC1(), AccessShareLock);

	/*
	 * We might have some concurrent metadata changes. In order to get the changes,
	 * we first need to accept the cache invalidation messages.
	 */
	FUNC0();

	if (!workerNodeHashValid)
	{
		FUNC3();

		workerNodeHashValid = true;
	}
}