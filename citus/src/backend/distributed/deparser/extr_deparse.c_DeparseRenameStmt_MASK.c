#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int renameType; } ;
typedef  TYPE_1__ RenameStmt ;

/* Variables and functions */
 char const* FUNC0 (TYPE_1__*) ; 
 char const* FUNC1 (TYPE_1__*) ; 
 char const* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
#define  OBJECT_AGGREGATE 132 
#define  OBJECT_ATTRIBUTE 131 
#define  OBJECT_FUNCTION 130 
#define  OBJECT_PROCEDURE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static const char *
FUNC5(RenameStmt *stmt)
{
	switch (stmt->renameType)
	{
		case OBJECT_TYPE:
		{
			return FUNC2(stmt);
		}

		case OBJECT_ATTRIBUTE:
		{
			return FUNC0(stmt);
		}

		case OBJECT_PROCEDURE:
		case OBJECT_AGGREGATE:
		case OBJECT_FUNCTION:
		{
			return FUNC1(stmt);
		}

		default:
		{
			FUNC3(ERROR, (FUNC4("unsupported rename statement for deparsing")));
		}
	}
}