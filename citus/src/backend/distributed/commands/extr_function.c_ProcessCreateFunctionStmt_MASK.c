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
struct TYPE_4__ {int /*<<< orphan*/  objectId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  CreateFunctionStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC7(CreateFunctionStmt *stmt, const char *queryString)
{
	const ObjectAddress *address = NULL;
	List *commands = NIL;

	if (!FUNC5(stmt))
	{
		return NIL;
	}

	address = FUNC3((Node *) stmt, false);
	FUNC0(address);

	commands = FUNC6(DISABLE_DDL_PROPAGATION,
						  FUNC2(address->objectId, true),
						  FUNC1(address->objectId),
						  ENABLE_DDL_PROPAGATION);

	return FUNC4(ALL_WORKERS, commands);
}