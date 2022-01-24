#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pronamespace; int /*<<< orphan*/  proname; } ;
struct TYPE_9__ {int /*<<< orphan*/  objargs; int /*<<< orphan*/  args_unspecified; int /*<<< orphan*/  objname; } ;
struct TYPE_8__ {int addCatalog; int /*<<< orphan*/  schemas; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectWithArgs ;
typedef  int /*<<< orphan*/  ObjectType ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  NIL ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_get_function_identity_arguments ; 
 char* FUNC18 (char*) ; 
 char* FUNC19 (char*,char*) ; 

__attribute__((used)) static void
FUNC20(StringInfo buf, ObjectWithArgs *func, ObjectType objtype)
{
	Oid funcid = InvalidOid;
	HeapTuple proctup;
	char *functionName = NULL;
	char *schemaName = NULL;
	char *qualifiedFunctionName;

	funcid = FUNC5(objtype, func, true);
	proctup = FUNC12(PROCOID, FUNC7(funcid));

	if (!FUNC4(proctup))
	{
		/*
		 * DROP FUNCTION IF EXISTS absent_function arrives here
		 *
		 * There is no namespace associated with the nonexistent function,
		 * thus we return the function name as it is provided
		 */
		FUNC0(func->objname, &schemaName, &functionName);
	}
	else
	{
		Form_pg_proc procform;

		procform = (Form_pg_proc) FUNC2(proctup);
		functionName = FUNC6(procform->proname);
		functionName = FUNC18(functionName); /* we release the tuple before used */
		schemaName = FUNC17(procform->pronamespace);

		FUNC11(proctup);
	}

	qualifiedFunctionName = FUNC19(schemaName, functionName);
	FUNC16(buf, qualifiedFunctionName);

	if (FUNC8(funcid))
	{
		/*
		 * If the function exists we want to use pg_get_function_identity_arguments to
		 * serialize its canonical arguments
		 */
		OverrideSearchPath *overridePath = NULL;
		Datum sqlTextDatum = 0;
		const char *args = NULL;

		/*
		 * Set search_path to NIL so that all objects outside of pg_catalog will be
		 * schema-prefixed. pg_catalog will be added automatically when we call
		 * PushOverrideSearchPath(), since we set addCatalog to true;
		 */
		overridePath = FUNC3(CurrentMemoryContext);
		overridePath->schemas = NIL;
		overridePath->addCatalog = true;

		FUNC10(overridePath);

		sqlTextDatum = FUNC1(pg_get_function_identity_arguments,
										   FUNC7(funcid));

		/* revert back to original search_path */
		FUNC9();

		args = FUNC13(sqlTextDatum);
		FUNC15(buf, "(%s)", args);
	}
	else if (!func->args_unspecified)
	{
		/*
		 * The function is not found, but there is an argument list specified, this has
		 * some known issues with the "any" type. However this is mostly a bug in
		 * postgres' TypeNameListToString. For now the best we can do until we understand
		 * the underlying cause better.
		 */
		const char *args = NULL;

		args = FUNC14(func->objargs);
		FUNC15(buf, "(%s)", args);
	}

	/*
	 * If the type is not found, and no argument list given we don't append anything here.
	 * This will cause mostly the same sql as the original statement.
	 */
}