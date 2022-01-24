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
struct TYPE_10__ {scalar_t__ prokind; int /*<<< orphan*/  proowner; } ;
struct TYPE_9__ {int addCatalog; int /*<<< orphan*/  schemas; } ;
struct TYPE_8__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  TYPE_2__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_proc ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  PROCOID ; 
 scalar_t__ PROKIND_AGGREGATE ; 
 scalar_t__ PROKIND_PROCEDURE ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/  const) ; 
 TYPE_1__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  regprocedureout ; 

__attribute__((used)) static char *
FUNC17(const RegProcedure funcOid)
{
	HeapTuple proctup = FUNC11(PROCOID, FUNC6(funcOid));
	StringInfo alterCommand = FUNC15();
	char *kindString = "FUNCTION";
	Oid procOwner = InvalidOid;

	char *functionSignature = NULL;
	char *functionOwner = NULL;

	OverrideSearchPath *overridePath = NULL;
	Datum functionSignatureDatum = 0;

	if (FUNC5(proctup))
	{
		Form_pg_proc procform;

		procform = (Form_pg_proc) FUNC2(proctup);

		procOwner = procform->proowner;

		if (procform->prokind == PROKIND_PROCEDURE)
		{
			kindString = "PROCEDURE";
		}
		else if (procform->prokind == PROKIND_AGGREGATE)
		{
			kindString = "AGGREGATE";
		}

		FUNC10(proctup);
	}
	else if (!FUNC7(funcOid) || !FUNC5(proctup))
	{
		FUNC13(ERROR, (FUNC14("cannot find function with oid: %d", funcOid)));
	}

	/*
	 * Set search_path to NIL so that all objects outside of pg_catalog will be
	 * schema-prefixed. pg_catalog will be added automatically when we call
	 * PushOverrideSearchPath(), since we set addCatalog to true;
	 */
	overridePath = FUNC3(CurrentMemoryContext);
	overridePath->schemas = NIL;
	overridePath->addCatalog = true;

	FUNC9(overridePath);

	/*
	 * If the function exists we want to use pg_get_function_identity_arguments to
	 * serialize its canonical arguments
	 */
	functionSignatureDatum =
		FUNC1(regprocedureout, FUNC6(funcOid));

	/* revert back to original search_path */
	FUNC8();

	/* regprocedureout returns cstring */
	functionSignature = FUNC0(functionSignatureDatum);

	functionOwner = FUNC4(procOwner, false);

	FUNC12(alterCommand, "ALTER %s %s OWNER TO %s;",
					 kindString,
					 functionSignature,
					 FUNC16(functionOwner));

	return alterCommand->data;
}