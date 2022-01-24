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
typedef  int /*<<< orphan*/  RenameStmt ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC7(RenameStmt *stmt, const char *queryString)
{
	const char *renameStmtSql = NULL;
	const ObjectAddress *typeAddress = NULL;
	List *commands = NIL;

	typeAddress = FUNC2((Node *) stmt, false);
	if (!FUNC5(typeAddress))
	{
		return NIL;
	}

	/* fully qualify */
	FUNC4((Node *) stmt);

	/* deparse sql*/
	renameStmtSql = FUNC0((Node *) stmt);

	/* to prevent recursion with mx we disable ddl propagation */
	FUNC1();

	commands = FUNC6(DISABLE_DDL_PROPAGATION,
						  (void *) renameStmtSql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC3(ALL_WORKERS, commands);
}