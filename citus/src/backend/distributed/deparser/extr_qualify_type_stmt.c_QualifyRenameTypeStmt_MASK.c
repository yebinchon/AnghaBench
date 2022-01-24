#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ renameType; int /*<<< orphan*/ * object; } ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(RenameStmt *stmt)
{
	List *names = (List *) stmt->object;

	FUNC0(stmt->renameType == OBJECT_TYPE);

	if (FUNC3(names) == 1)
	{
		/* not qualified, lookup name and add namespace name to names */
		char *nspname = FUNC1(names);
		names = FUNC4(FUNC5(nspname), FUNC2(names));

		stmt->object = (Node *) names;
	}
}