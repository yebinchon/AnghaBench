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
 int /*<<< orphan*/  AlterRoleStmt ; 
 int /*<<< orphan*/  AlterTableStmt ; 
 int /*<<< orphan*/  CompositeTypeStmt ; 
 int /*<<< orphan*/  CreateEnumStmt ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 char const* FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 
 char const* FUNC6 (int /*<<< orphan*/ ) ; 
 char const* FUNC7 (int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ ) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 char const* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DropStmt ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  RenameStmt ; 
#define  T_AlterEnumStmt 138 
#define  T_AlterFunctionStmt 137 
#define  T_AlterObjectDependsStmt 136 
#define  T_AlterObjectSchemaStmt 135 
#define  T_AlterOwnerStmt 134 
#define  T_AlterRoleStmt 133 
#define  T_AlterTableStmt 132 
#define  T_CompositeTypeStmt 131 
#define  T_CreateEnumStmt 130 
#define  T_DropStmt 129 
#define  T_RenameStmt 128 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

const char *
FUNC15(Node *stmt)
{
	switch (FUNC14(stmt))
	{
		case T_DropStmt:
		{
			return FUNC9(FUNC11(DropStmt, stmt));
		}

		case T_CompositeTypeStmt:
		{
			return FUNC7(FUNC11(CompositeTypeStmt, stmt));
		}

		case T_CreateEnumStmt:
		{
			return FUNC8(FUNC11(CreateEnumStmt, stmt));
		}

		case T_AlterTableStmt:
		{
			return FUNC6(FUNC11(AlterTableStmt, stmt));
		}

		case T_AlterEnumStmt:
		{
			return FUNC0(FUNC11(AlterEnumStmt, stmt));
		}

		case T_AlterFunctionStmt:
		{
			return FUNC1(FUNC11(AlterFunctionStmt, stmt));
		}

		case T_RenameStmt:
		{
			return FUNC10(FUNC11(RenameStmt, stmt));
		}

		case T_AlterObjectSchemaStmt:
		{
			return FUNC3(FUNC11(AlterObjectSchemaStmt, stmt));
		}

		case T_AlterOwnerStmt:
		{
			return FUNC4(FUNC11(AlterOwnerStmt, stmt));
		}

		case T_AlterObjectDependsStmt:
		{
			return FUNC2(FUNC11(AlterObjectDependsStmt, stmt));
		}

		case T_AlterRoleStmt:
		{
			return FUNC5(FUNC11(AlterRoleStmt, stmt));
		}

		default:
		{
			FUNC12(ERROR, (FUNC13("unsupported statement for deparsing")));
		}
	}
}