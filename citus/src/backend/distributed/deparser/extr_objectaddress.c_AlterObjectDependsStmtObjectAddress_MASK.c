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
struct TYPE_4__ {int objectType; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__ AlterObjectDependsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ERROR ; 
#define  OBJECT_FUNCTION 129 
#define  OBJECT_PROCEDURE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static const ObjectAddress *
FUNC3(AlterObjectDependsStmt *stmt, bool missing_ok)
{
	switch (stmt->objectType)
	{
		case OBJECT_PROCEDURE:
		case OBJECT_FUNCTION:
		{
			return FUNC0(stmt, missing_ok);
		}

		default:
		{
			FUNC1(ERROR, (FUNC2("unsupported alter depends on extension statement to "
								   "get object address for")));
		}
	}
}