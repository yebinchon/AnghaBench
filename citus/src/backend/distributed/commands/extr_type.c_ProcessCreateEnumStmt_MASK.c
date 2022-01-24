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
typedef  int /*<<< orphan*/  CreateEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(CreateEnumStmt *stmt, const char *queryString)
{
	const ObjectAddress *typeAddress = NULL;

	if (!FUNC3())
	{
		return;
	}

	/* lookup type address of just created type */
	typeAddress = FUNC1((Node *) stmt, false);
	FUNC0(typeAddress);

	/*
	 * now that the object has been created and distributed to the workers we mark them as
	 * distributed so we know to keep them up to date and recreate on a new node in the
	 * future
	 */
	FUNC2(typeAddress);
}