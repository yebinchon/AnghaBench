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
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	if (FUNC0())
	{
		FUNC2(ERROR, (FUNC5("cannot create function because there was a "
							   "parallel operation on a distributed table in the "
							   "transaction"),
						FUNC3("When creating a distributed function, Citus needs to "
								  "perform all operations over a single connection per "
								  "node to ensure consistency."),
						FUNC4("Try re-running the transaction with "
								"\"SET LOCAL citus.multi_shard_modify_mode TO "
								"\'sequential\';\"")));
	}

	FUNC2(DEBUG1, (FUNC5("switching to sequential query execution mode"),
					 FUNC3(
						 "A distributed function is created. To make sure subsequent "
						 "commands see the type correctly we need to make sure to "
						 "use only one connection for all future commands")));
	FUNC1();
}