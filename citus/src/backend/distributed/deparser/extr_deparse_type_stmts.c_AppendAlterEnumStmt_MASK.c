#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ newValNeighbor; scalar_t__ newValIsAfter; scalar_t__ newVal; scalar_t__ skipIfNewValExists; scalar_t__ oldVal; int /*<<< orphan*/  typeName; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ AlterEnumStmt ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(StringInfo buf, AlterEnumStmt *stmt)
{
	FUNC3(buf, "ALTER TYPE %s", FUNC2(stmt->typeName));

	if (FUNC1(stmt))
	{
		/* Rename an existing label */
		FUNC3(buf, " RENAME VALUE %s TO %s;",
						 FUNC5(stmt->oldVal),
						 FUNC5(stmt->newVal));
	}
	else if (FUNC0(stmt))
	{
		/* Add a new label */
		FUNC4(buf, " ADD VALUE ");
		if (stmt->skipIfNewValExists)
		{
			FUNC4(buf, "IF NOT EXISTS ");
		}
		FUNC4(buf, FUNC5(stmt->newVal));

		if (stmt->newValNeighbor)
		{
			FUNC3(buf, " %s %s",
							 stmt->newValIsAfter ? "AFTER" : "BEFORE",
							 FUNC5(stmt->newValNeighbor));
		}

		FUNC4(buf, ";");
	}
}