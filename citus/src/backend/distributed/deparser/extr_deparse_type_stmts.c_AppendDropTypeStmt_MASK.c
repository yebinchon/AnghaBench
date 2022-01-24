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
struct TYPE_3__ {scalar_t__ removeType; scalar_t__ behavior; int /*<<< orphan*/  objects; scalar_t__ missing_ok; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ DropStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DROP_CASCADE ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(StringInfo buf, DropStmt *stmt)
{
	/*
	 * already tested at call site, but for future it might be collapsed in a
	 * DeparseDropStmt so be safe and check again
	 */
	FUNC1(stmt->removeType == OBJECT_TYPE);

	FUNC2(buf, "DROP TYPE ");
	if (stmt->missing_ok)
	{
		FUNC3(buf, "IF EXISTS ");
	}
	FUNC0(buf, stmt->objects);
	if (stmt->behavior == DROP_CASCADE)
	{
		FUNC3(buf, " CASCADE");
	}
	FUNC3(buf, ";");
}