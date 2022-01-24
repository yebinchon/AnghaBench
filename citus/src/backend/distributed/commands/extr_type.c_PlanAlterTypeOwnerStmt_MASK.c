#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ objectType; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterOwnerStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC9(AlterOwnerStmt *stmt, const char *queryString)
{
	const ObjectAddress *typeAddress = NULL;
	const char *sql = NULL;
	List *commands = NULL;

	FUNC0(stmt->objectType == OBJECT_TYPE);

	typeAddress = FUNC4((Node *) stmt, false);
	if (!FUNC7(typeAddress))
	{
		return NIL;
	}

	FUNC2();

	FUNC6((Node *) stmt);
	sql = FUNC1((Node *) stmt);

	FUNC3();
	commands = FUNC8(DISABLE_DDL_PROPAGATION,
						  (void *) sql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC5(ALL_WORKERS, commands);
}