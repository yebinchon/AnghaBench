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
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ReadFromSecondaries ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ USE_SECONDARY_NODES_ALWAYS ; 
 int /*<<< orphan*/  WritableStandbyCoordinator ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void)
{
	if (FUNC0() && !WritableStandbyCoordinator)
	{
		FUNC1(ERROR, (FUNC3("writing to worker nodes is not currently allowed"),
						FUNC2("the database is in recovery mode")));
	}

	if (ReadFromSecondaries == USE_SECONDARY_NODES_ALWAYS)
	{
		FUNC1(ERROR, (FUNC3("writing to worker nodes is not currently allowed"),
						FUNC2("citus.use_secondary_nodes is set to 'always'")));
	}
}