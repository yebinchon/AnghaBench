#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ def; } ;
struct TYPE_11__ {char* colname; } ;
struct TYPE_10__ {scalar_t__ contype; scalar_t__ fk_del_action; scalar_t__ fk_upd_action; int /*<<< orphan*/  pk_attrs; int /*<<< orphan*/ * pktable; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Constraint ;
typedef  TYPE_3__ ColumnDef ;
typedef  TYPE_4__ AlterTableCmd ;

/* Variables and functions */
 scalar_t__ CONSTR_CHECK ; 
 scalar_t__ CONSTR_FOREIGN ; 
 scalar_t__ CONSTR_PRIMARY ; 
 scalar_t__ CONSTR_UNIQUE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FKCONSTR_ACTION_CASCADE ; 
 scalar_t__ FKCONSTR_ACTION_RESTRICT ; 
 scalar_t__ FKCONSTR_ACTION_SETDEFAULT ; 
 scalar_t__ FKCONSTR_ACTION_SETNULL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(Oid relationId, AlterTableCmd *command,
									Constraint *constraint)
{
	ColumnDef *columnDefinition = (ColumnDef *) command->def;
	char *colName = columnDefinition->colname;
	char *errMsg =
		"cannot execute ADD COLUMN command with PRIMARY KEY, UNIQUE, FOREIGN and CHECK constraints";
	StringInfo errHint = FUNC10();
	FUNC1(errHint, "You can issue each command separately such as ");
	FUNC1(errHint,
					 "ALTER TABLE %s ADD COLUMN %s data_type; ALTER TABLE %s ADD CONSTRAINT constraint_name ",
					 FUNC7(relationId),
					 colName, FUNC7(relationId));

	if (constraint->contype == CONSTR_UNIQUE)
	{
		FUNC1(errHint, "UNIQUE (%s)", colName);
	}
	else if (constraint->contype == CONSTR_PRIMARY)
	{
		FUNC1(errHint, "PRIMARY KEY (%s)", colName);
	}
	else if (constraint->contype == CONSTR_CHECK)
	{
		FUNC1(errHint, "CHECK (check_expression)");
	}
	else if (constraint->contype == CONSTR_FOREIGN)
	{
		RangeVar *referencedTable = constraint->pktable;
		char *referencedColumn = FUNC11(FUNC8(FUNC9(constraint->pk_attrs)));
		Oid referencedRelationId = FUNC0(referencedTable, NoLock, false);

		FUNC1(errHint, "FOREIGN KEY (%s) REFERENCES %s(%s)", colName,
						 FUNC7(referencedRelationId), referencedColumn);

		if (constraint->fk_del_action == FKCONSTR_ACTION_SETNULL)
		{
			FUNC1(errHint, " %s", "ON DELETE SET NULL");
		}
		else if (constraint->fk_del_action == FKCONSTR_ACTION_CASCADE)
		{
			FUNC1(errHint, " %s", "ON DELETE CASCADE");
		}
		else if (constraint->fk_del_action == FKCONSTR_ACTION_SETDEFAULT)
		{
			FUNC1(errHint, " %s", "ON DELETE SET DEFAULT");
		}
		else if (constraint->fk_del_action == FKCONSTR_ACTION_RESTRICT)
		{
			FUNC1(errHint, " %s", "ON DELETE RESTRICT");
		}

		if (constraint->fk_upd_action == FKCONSTR_ACTION_SETNULL)
		{
			FUNC1(errHint, " %s", "ON UPDATE SET NULL");
		}
		else if (constraint->fk_upd_action == FKCONSTR_ACTION_CASCADE)
		{
			FUNC1(errHint, " %s", "ON UPDATE CASCADE");
		}
		else if (constraint->fk_upd_action == FKCONSTR_ACTION_SETDEFAULT)
		{
			FUNC1(errHint, " %s", "ON UPDATE SET DEFAULT");
		}
		else if (constraint->fk_upd_action == FKCONSTR_ACTION_RESTRICT)
		{
			FUNC1(errHint, " %s", "ON UPDATE RESTRICT");
		}
	}

	FUNC1(errHint, "%s", ";");

	FUNC2(ERROR, (FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
					FUNC6("%s", errMsg),
					FUNC5("%s", errHint->data),
					FUNC4("Adding a column with a constraint in "
							  "one command is not supported because "
							  "all constraints in Citus must have "
							  "explicit names")));
}