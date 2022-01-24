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
 int /*<<< orphan*/  ERRCODE_INVALID_TABLE_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Oid relationId)
{
	char *relationName = FUNC4(relationId);
	bool isDistributedTable = false;

	isDistributedTable = FUNC0(relationId);

	if (isDistributedTable)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_INVALID_TABLE_DEFINITION),
						FUNC3("table \"%s\" is already distributed",
							   relationName)));
	}
}