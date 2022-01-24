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
struct TYPE_4__ {scalar_t__ renameType; } ;
typedef  TYPE_1__ RenameStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ OBJECT_TABCONSTRAINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(RenameStmt *renameStmt)
{
	if (FUNC0(renameStmt) &&
		renameStmt->renameType == OBJECT_TABCONSTRAINT)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC3("renaming constraints belonging to distributed tables is "
							   "currently unsupported")));
	}
}