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
 scalar_t__ LocalExecutionHappened ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(void)
{
	if (LocalExecutionHappened)
	{
		FUNC0(ERROR, (FUNC3("cannot execute command because a local execution has "
							   "already been done in the transaction"),
						FUNC2("Try re-running the transaction with "
								"\"SET LOCAL citus.enable_local_execution TO OFF;\""),
						FUNC1("Some parallel commands cannot be executed if a "
								  "previous command has already been executed locally")));
	}
}