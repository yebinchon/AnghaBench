#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  AlterEnumStmt ; 
 int /*<<< orphan*/  AlterFunctionStmt ; 
 int /*<<< orphan*/  AlterObjectDependsStmt ; 
 int /*<<< orphan*/  AlterObjectSchemaStmt ; 
 int /*<<< orphan*/  AlterOwnerStmt ; 
 int /*<<< orphan*/  AlterTableStmt ; 
 int /*<<< orphan*/  CompositeTypeStmt ; 
 int /*<<< orphan*/  CreateEnumStmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RenameStmt ; 
#define  T_AlterEnumStmt 136 
#define  T_AlterFunctionStmt 135 
#define  T_AlterObjectDependsStmt 134 
#define  T_AlterObjectSchemaStmt 133 
#define  T_AlterOwnerStmt 132 
#define  T_AlterTableStmt 131 
#define  T_CompositeTypeStmt 130 
#define  T_CreateEnumStmt 129 
#define  T_RenameStmt 128 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(Node *stmt)
{
	switch (FUNC10(stmt))
	{
		case T_RenameStmt:
		{
			FUNC8(FUNC9(RenameStmt, stmt));
			return;
		}

		case T_AlterEnumStmt:
		{
			FUNC0(FUNC9(AlterEnumStmt, stmt));
			return;
		}

		case T_AlterTableStmt:
		{
			FUNC5(FUNC9(AlterTableStmt, stmt));
			return;
		}

		case T_CompositeTypeStmt:
		{
			FUNC6(FUNC9(CompositeTypeStmt, stmt));
			return;
		}

		case T_CreateEnumStmt:
		{
			FUNC7(FUNC9(CreateEnumStmt, stmt));
			return;
		}

		case T_AlterObjectSchemaStmt:
		{
			FUNC3(FUNC9(AlterObjectSchemaStmt, stmt));
			return;
		}

		case T_AlterOwnerStmt:
		{
			FUNC4(FUNC9(AlterOwnerStmt, stmt));
			return;
		}

		case T_AlterFunctionStmt:
		{
			FUNC1(FUNC9(AlterFunctionStmt, stmt));
			return;
		}

		case T_AlterObjectDependsStmt:
		{
			FUNC2(FUNC9(AlterObjectDependsStmt, stmt));
			return;
		}

		default:
		{
			/* skip unsupported statements */
			break;
		}
	}
}