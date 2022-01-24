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
struct TYPE_3__ {scalar_t__ objectType; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ OBJECT_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

void
FUNC4(AlterObjectSchemaStmt *stmt, const char *queryString)
{
	const ObjectAddress *typeAddress = NULL;

	FUNC0(stmt->objectType == OBJECT_TYPE);

	typeAddress = FUNC2((Node *) stmt, false);
	if (!FUNC3(typeAddress))
	{
		return;
	}

	/* dependencies have changed (schema) lets ensure they exist */
	FUNC1(typeAddress);
}