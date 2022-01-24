#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
struct TYPE_2__ {scalar_t__ attnum; int /*<<< orphan*/  attcollation; int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 

Var *
FUNC12(Relation distributedRelation, char *columnName)
{
	HeapTuple columnTuple = NULL;
	Form_pg_attribute columnForm = NULL;
	Var *distributionColumn = NULL;
	char *tableName = FUNC2(distributedRelation);

	/* short circuit for reference tables */
	if (columnName == NULL)
	{
		return NULL;
	}

	/* it'd probably better to downcase identifiers consistent with SQL case folding */
	FUNC11(columnName, FUNC10(columnName), true);

	/* lookup column definition */
	columnTuple = FUNC5(FUNC3(distributedRelation),
										columnName);
	if (!FUNC1(columnTuple))
	{
		FUNC6(ERROR, (FUNC7(ERRCODE_UNDEFINED_COLUMN),
						FUNC8("column \"%s\" of relation \"%s\" does not exist",
							   columnName, tableName)));
	}

	columnForm = (Form_pg_attribute) FUNC0(columnTuple);

	/* check if the column may be referenced in the distribution key */
	if (columnForm->attnum <= 0)
	{
		FUNC6(ERROR, (FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC8("cannot reference system column \"%s\" in relation \"%s\"",
							   columnName, tableName)));
	}

	/* build Var referencing only the chosen distribution column */
	distributionColumn = FUNC9(1, columnForm->attnum, columnForm->atttypid,
								 columnForm->atttypmod, columnForm->attcollation, 0);

	FUNC4(columnTuple);

	return distributionColumn;
}