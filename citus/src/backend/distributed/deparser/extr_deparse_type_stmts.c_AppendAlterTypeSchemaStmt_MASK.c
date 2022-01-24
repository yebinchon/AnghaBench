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
struct TYPE_3__ {scalar_t__ objectType; int /*<<< orphan*/  newschema; scalar_t__ object; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(StringInfo buf, AlterObjectSchemaStmt *stmt)
{
	List *names = NIL;

	FUNC0(stmt->objectType == OBJECT_TYPE);

	names = (List *) stmt->object;
	FUNC2(buf, "ALTER TYPE %s SET SCHEMA %s;", FUNC1(names),
					 FUNC3(stmt->newschema));
}