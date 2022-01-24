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
struct TYPE_4__ {int /*<<< orphan*/  objtype; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterFunctionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC10(AlterFunctionStmt *stmt, const char *queryString)
{
	const char *sql = NULL;
	const ObjectAddress *address = NULL;
	List *commands = NIL;

	FUNC0(stmt->objtype);

	address = FUNC5((Node *) stmt, false);
	if (!FUNC8(address))
	{
		return NIL;
	}

	FUNC2();
	FUNC4(stmt);
	FUNC3();
	FUNC7((Node *) stmt);
	sql = FUNC1((Node *) stmt);

	commands = FUNC9(DISABLE_DDL_PROPAGATION,
						  (void *) sql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC6(ALL_WORKERS, commands);
}