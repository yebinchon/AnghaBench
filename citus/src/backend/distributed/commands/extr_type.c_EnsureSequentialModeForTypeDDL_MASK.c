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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	if (!FUNC0())
	{
		/* we do not need to switch to sequential mode if we are not in a transaction */
		return;
	}

	if (FUNC1())
	{
		FUNC3(ERROR, (FUNC6("cannot create or modify type because there was a "
							   "parallel operation on a distributed table in the "
							   "transaction"),
						FUNC4("When creating or altering a type, Citus needs to "
								  "perform all operations over a single connection per "
								  "node to ensure consistency."),
						FUNC5("Try re-running the transaction with "
								"\"SET LOCAL citus.multi_shard_modify_mode TO "
								"\'sequential\';\"")));
	}

	FUNC3(DEBUG1, (FUNC6("switching to sequential query execution mode"),
					 FUNC4("Type is created or altered. To make sure subsequent "
							   "commands see the type correctly we need to make sure to "
							   "use only one connection for all future commands")));
	FUNC2();
}