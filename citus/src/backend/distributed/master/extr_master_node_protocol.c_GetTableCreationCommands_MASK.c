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
struct TYPE_4__ {int addCatalog; void* schemas; } ;
typedef  TYPE_1__ OverrideSearchPath ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentMemoryContext ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 void* NIL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char RELKIND_FOREIGN_TABLE ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int) ; 

List *
FUNC10(Oid relationId, bool includeSequenceDefaults)
{
	List *tableDDLEventList = NIL;
	char tableType = 0;
	char *tableSchemaDef = NULL;
	char *tableColumnOptionsDef = NULL;
	char *tableOwnerDef = NULL;

	/*
	 * Set search_path to NIL so that all objects outside of pg_catalog will be
	 * schema-prefixed. pg_catalog will be added automatically when we call
	 * PushOverrideSearchPath(), since we set addCatalog to true;
	 */
	OverrideSearchPath *overridePath = FUNC0(CurrentMemoryContext);
	overridePath->schemas = NIL;
	overridePath->addCatalog = true;
	FUNC2(overridePath);

	/* if foreign table, fetch extension and server definitions */
	tableType = FUNC4(relationId);
	if (tableType == RELKIND_FOREIGN_TABLE)
	{
		char *extensionDef = FUNC6(relationId);
		char *serverDef = FUNC7(relationId);

		if (extensionDef != NULL)
		{
			tableDDLEventList = FUNC5(tableDDLEventList, extensionDef);
		}
		tableDDLEventList = FUNC5(tableDDLEventList, serverDef);
	}

	/* fetch table schema and column option definitions */
	tableSchemaDef = FUNC9(relationId, includeSequenceDefaults);
	tableColumnOptionsDef = FUNC8(relationId);

	tableDDLEventList = FUNC5(tableDDLEventList, tableSchemaDef);
	if (tableColumnOptionsDef != NULL)
	{
		tableDDLEventList = FUNC5(tableDDLEventList, tableColumnOptionsDef);
	}

	tableOwnerDef = FUNC3(relationId);
	if (tableOwnerDef != NULL)
	{
		tableDDLEventList = FUNC5(tableDDLEventList, tableOwnerDef);
	}

	/* revert back to original search_path */
	FUNC1();

	return tableDDLEventList;
}