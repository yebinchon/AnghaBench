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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ DISTRIBUTE_BY_HASH ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(Oid relationId)
{
	if (!FUNC0(relationId))
	{
		char *relationName = FUNC6(relationId);
		char *escapedQueryString = FUNC7(relationName);
		FUNC3(ERROR, (FUNC4(ERRCODE_INVALID_TABLE_DEFINITION),
						FUNC5("cannot calculate the size because relation %s is not "
							   "distributed", escapedQueryString)));
	}

	if (FUNC1(relationId) == DISTRIBUTE_BY_HASH &&
		!FUNC2(relationId))
	{
		FUNC3(ERROR, (FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC5("cannot calculate the size because replication factor "
							   "is greater than 1")));
	}
}