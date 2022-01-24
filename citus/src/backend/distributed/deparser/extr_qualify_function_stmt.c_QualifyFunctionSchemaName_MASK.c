#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  proname; int /*<<< orphan*/  pronamespace; } ;
struct TYPE_5__ {int /*<<< orphan*/  objname; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectWithArgs ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 

void
FUNC11(ObjectWithArgs *func, ObjectType type)
{
	char *schemaName = NULL;
	char *functionName = NULL;
	Oid funcid = InvalidOid;
	HeapTuple proctup;

	funcid = FUNC2(type, func, true);
	proctup = FUNC6(PROCOID, FUNC4(funcid));

	/*
	 * We can not qualify the function if the catalogs do not have any records.
	 *
	 * e.g. DROP FUNC IF EXISTS non_existent_func() do not result in a valid heap tuple
	 */
	if (FUNC1(proctup))
	{
		Form_pg_proc procform;

		procform = (Form_pg_proc) FUNC0(proctup);
		schemaName = FUNC7(procform->pronamespace);
		functionName = FUNC3(procform->proname);
		functionName = FUNC10(functionName); /* we release the tuple before used */

		FUNC5(proctup);

		/* update the function using the schema name */
		func->objname = FUNC8(FUNC9(schemaName), FUNC9(functionName));
	}
}