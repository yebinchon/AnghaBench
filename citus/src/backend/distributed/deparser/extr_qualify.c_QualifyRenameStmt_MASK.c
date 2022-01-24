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
#define  OBJECT_ATTRIBUTE 131 
#define  OBJECT_FUNCTION 130 
#define  OBJECT_PROCEDURE 129 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(RenameStmt *stmt)
{
	switch (stmt->renameType)
	{
		case OBJECT_TYPE:
		{
			FUNC2(stmt);
			return;
		}

		case OBJECT_ATTRIBUTE:
		{
			FUNC0(stmt);
			return;
		}

		case OBJECT_FUNCTION:
		case OBJECT_PROCEDURE:
		{
			FUNC1(stmt);
		}

		default:
		{
			/* skip unsupported statements */
			break;
		}
	}
}