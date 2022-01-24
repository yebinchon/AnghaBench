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
struct TYPE_4__ {scalar_t__ renameType; int relationType; } ;
typedef  TYPE_1__ RenameStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ OBJECT_ATTRIBUTE ; 
#define  OBJECT_TYPE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static const char *
FUNC4(RenameStmt *stmt)
{
	FUNC0(stmt->renameType == OBJECT_ATTRIBUTE);

	switch (stmt->relationType)
	{
		case OBJECT_TYPE:
		{
			return FUNC1(stmt);
		}

		default:
		{
			FUNC2(ERROR, (FUNC3("unsupported rename attribute statement for"
								   " deparsing")));
		}
	}
}