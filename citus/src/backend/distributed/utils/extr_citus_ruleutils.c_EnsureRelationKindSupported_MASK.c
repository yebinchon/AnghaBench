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
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char RELKIND_FOREIGN_TABLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(Oid relationId)
{
	char relationKind = FUNC7(relationId);
	bool supportedRelationKind = false;

	supportedRelationKind = FUNC2(relationId) ||
							relationKind == RELKIND_FOREIGN_TABLE;

	/*
	 * Citus doesn't support bare inherited tables (i.e., not a partition or
	 * partitioned table)
	 */
	supportedRelationKind = supportedRelationKind && !(FUNC0(relationId) ||
													   FUNC1(relationId));

	if (!supportedRelationKind)
	{
		char *relationName = FUNC6(relationId);

		FUNC3(ERROR, (FUNC4(ERRCODE_WRONG_OBJECT_TYPE),
						FUNC5("%s is not a regular, foreign or partitioned table",
							   relationName)));
	}
}