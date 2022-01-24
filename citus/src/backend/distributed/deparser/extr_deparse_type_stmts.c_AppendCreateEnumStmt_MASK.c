#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vals; int /*<<< orphan*/  typeName; } ;
struct TYPE_5__ {int /*<<< orphan*/  relname; int /*<<< orphan*/  schemaname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ RangeVar ;
typedef  TYPE_2__ CreateEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(StringInfo str, CreateEnumStmt *stmt)
{
	RangeVar *typevar = NULL;
	const char *identifier = NULL;

	typevar = FUNC2(stmt->typeName);

	/* create the identifier from the fully qualified rangevar */
	identifier = FUNC3(typevar->schemaname, typevar->relname);

	FUNC1(str, "CREATE TYPE %s AS ENUM (", identifier);
	FUNC0(str, stmt->vals);
	FUNC1(str, ");");
}