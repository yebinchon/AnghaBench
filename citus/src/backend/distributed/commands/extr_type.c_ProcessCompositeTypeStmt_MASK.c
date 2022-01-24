#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  CompositeTypeStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(CompositeTypeStmt *stmt, const char *queryString)
{
	const ObjectAddress *typeAddress = NULL;

	/* same check we perform during planning of the statement */
	if (!FUNC3())
	{
		return;
	}

	/*
	 * find object address of the just created object, because the type has been created
	 * locally it can't be missing
	 */
	typeAddress = FUNC1((Node *) stmt, false);
	FUNC0(typeAddress);

	FUNC2(typeAddress);
}