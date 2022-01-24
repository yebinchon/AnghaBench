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
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_FOREIGN_TABLE_COMMAND ; 
 int /*<<< orphan*/  DROP_REGULAR_TABLE_COMMAND ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 char RELKIND_FOREIGN_TABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 () ; 
 char* FUNC13 (char const*,char const*) ; 

__attribute__((used)) static List *
FUNC14(Oid relationId)
{
	const char *relationName = FUNC7(relationId);
	Oid relationSchemaId = FUNC8(relationId);
	const char *relationSchemaName = FUNC6(relationSchemaId);
	const char *qualifiedRelationName = FUNC13(relationSchemaName,
																   relationName);

	StringInfo dropCommand = FUNC12();
	List *createCommandList = NIL;
	List *dropCommandList = NIL;
	List *recreateCommandList = NIL;
	char relationKind = FUNC9(relationId);
	bool includeSequenceDefaults = false;

	/* build appropriate DROP command based on relation kind */
	if (FUNC1(relationId))
	{
		FUNC2(dropCommand, DROP_REGULAR_TABLE_COMMAND,
						 qualifiedRelationName);
	}
	else if (relationKind == RELKIND_FOREIGN_TABLE)
	{
		FUNC2(dropCommand, DROP_FOREIGN_TABLE_COMMAND,
						 qualifiedRelationName);
	}
	else
	{
		FUNC3(ERROR, (FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						FUNC5("repair target is not a regular, foreign or partitioned "
							   "table")));
	}

	dropCommandList = FUNC11(dropCommand->data);
	createCommandList = FUNC0(relationId, includeSequenceDefaults);
	recreateCommandList = FUNC10(dropCommandList, createCommandList);

	return recreateCommandList;
}