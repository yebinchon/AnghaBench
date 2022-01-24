#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int skipIfNewValExists; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int RESPONSE_OKAY ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,void*) ; 

void
FUNC10(AlterEnumStmt *stmt, const char *queryString)
{
	const ObjectAddress *typeAddress = NULL;

	typeAddress = FUNC2((Node *) stmt, false);
	if (!FUNC4(typeAddress))
	{
		return;
	}

	/*
	 * Before pg12 ALTER ENUM ... ADD VALUE could not be within a xact block. Normally we
	 * would propagate the statements in a xact block to perform 2pc on changes via ddl.
	 * Instead we need to connect directly to the workers here and execute the command.
	 *
	 * From pg12 and up we use the normal infrastructure and create the ddl jobs during
	 * planning.
	 */
#if PG_VERSION_NUM < 120000
	if (FUNC0(stmt))
	{
		/*
		 * ADD VALUE can't be executed in a transaction, we will execute optimistically
		 * and on an error we will advise to fix the issue with the worker and rerun the
		 * query with the IF NOT EXTISTS modifier. The modifier is needed as the value
		 * might already be added to some nodes, but not all.
		 */

		int result = 0;
		List *commands = NIL;
		const char *alterEnumStmtSql = NULL;

		/* qualification of the stmt happened during planning */
		alterEnumStmtSql = FUNC1((Node *) stmt);

		commands = FUNC9(DISABLE_DDL_PROPAGATION, (void *) alterEnumStmtSql);

		result = FUNC3(ALL_WORKERS, commands, NULL);

		if (result != RESPONSE_OKAY)
		{
			const char *alterEnumStmtIfNotExistsSql = NULL;
			bool oldSkipIfNewValueExists = stmt->skipIfNewValExists;

			/* deparse the query with IF NOT EXISTS */
			stmt->skipIfNewValExists = true;
			alterEnumStmtIfNotExistsSql = FUNC1((Node *) stmt);
			stmt->skipIfNewValExists = oldSkipIfNewValueExists;

			FUNC5(WARNING, (FUNC8("not all workers applied change to enum"),
							  FUNC6("retry with: %s", alterEnumStmtIfNotExistsSql),
							  FUNC7("make sure the coordinators can communicate with "
									  "all workers")));
		}
	}
#endif
}