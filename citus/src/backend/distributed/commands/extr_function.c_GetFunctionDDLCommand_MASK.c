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
struct TYPE_4__ {int addCatalog; int /*<<< orphan*/  schemas; } ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  TYPE_1__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/  const,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ PROKIND_AGGREGATE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  pg_get_functiondef ; 

char *
FUNC8(const RegProcedure funcOid, bool useCreateOrReplace)
{
	OverrideSearchPath *overridePath = NULL;
	char *createFunctionSQL = NULL;

	if (FUNC7(funcOid) == PROKIND_AGGREGATE)
	{
		createFunctionSQL = FUNC1(funcOid, useCreateOrReplace);
	}
	else
	{
		Datum sqlTextDatum = (Datum) 0;

		/*
		 * Set search_path to NIL so that all objects outside of pg_catalog will be
		 * schema-prefixed. pg_catalog will be added automatically when we call
		 * PushOverrideSearchPath(), since we set addCatalog to true;
		 */
		overridePath = FUNC2(CurrentMemoryContext);
		overridePath->schemas = NIL;
		overridePath->addCatalog = true;

		FUNC5(overridePath);
		sqlTextDatum = FUNC0(pg_get_functiondef,
										   FUNC3(funcOid));
		createFunctionSQL = FUNC6(sqlTextDatum);

		/* revert back to original search_path */
		FUNC4();
	}

	return createFunctionSQL;
}