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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ MultiShardConnectionType ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ SEQUENTIAL_CONNECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(Oid relationId, bool localTableEmpty)
{
	bool hasForeignKeyToReferenceTable = FUNC0(relationId);
	bool shouldRunSequential = MultiShardConnectionType == SEQUENTIAL_CONNECTION ||
							   hasForeignKeyToReferenceTable;

	if (!localTableEmpty && shouldRunSequential)
	{
		char *relationName = FUNC7(relationId);

		FUNC3(ERROR, (FUNC6("cannot distribute \"%s\" in sequential mode "
							   "because it is not empty", relationName),
						FUNC5("If you have manually set "
								"citus.multi_shard_modify_mode to 'sequential', "
								"try with 'parallel' option. If that is not the "
								"case, try distributing local tables when they "
								"are empty.")));
	}
	else if (shouldRunSequential && FUNC2())
	{
		char *relationName = FUNC7(relationId);

		/*
		 * If there has already been a parallel query executed, the sequential mode
		 * would still use the already opened parallel connections to the workers,
		 * thus contradicting our purpose of using sequential mode.
		 */
		FUNC3(ERROR, (FUNC6("cannot distribute relation \"%s\" in this "
							   "transaction because it has a foreign key to "
							   "a reference table", relationName),
						FUNC4("If a hash distributed table has a foreign key "
								  "to a reference table, it has to be created "
								  "in sequential mode before any parallel commands "
								  "have been executed in the same transaction"),
						FUNC5("Try re-running the transaction with "
								"\"SET LOCAL citus.multi_shard_modify_mode TO "
								"\'sequential\';\"")));
	}
	else if (shouldRunSequential)
	{
		return false;
	}
	else if (!localTableEmpty || FUNC1())
	{
		return true;
	}

	return false;
}