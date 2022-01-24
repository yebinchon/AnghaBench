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
struct TYPE_3__ {int /*<<< orphan*/  objectType; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterObjectDependsStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EnableDependencyCreation ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ creating_extension ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 

List *
FUNC7(AlterObjectDependsStmt *stmt, const char *queryString)
{
	const ObjectAddress *address = NULL;
	const char *functionName = NULL;

	FUNC0(stmt->objectType);

	if (creating_extension)
	{
		/*
		 * extensions should be created separately on the workers, types cascading from an
		 * extension should therefor not be propagated here.
		 */
		return NIL;
	}

	if (!EnableDependencyCreation)
	{
		/*
		 * we are configured to disable object propagation, should not propagate anything
		 */
		return NIL;
	}

	address = FUNC1((Node *) stmt, true);
	if (!FUNC2(address))
	{
		return NIL;
	}

	/*
	 * Distributed objects should not start depending on an extension, this will break
	 * the dependency resolving mechanism we use to replicate distributed objects to new
	 * workers
	 */

	functionName = FUNC6(address);
	FUNC3(ERROR, (FUNC5("distrtibuted functions are not allowed to depend on an "
						   "extension"),
					FUNC4("Function \"%s\" is already distributed. Functions from "
							  "extensions are expected to be created on the workers by "
							  "the extension they depend on.", functionName)));
}