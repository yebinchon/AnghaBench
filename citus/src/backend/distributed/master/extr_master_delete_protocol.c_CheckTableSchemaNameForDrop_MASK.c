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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(Oid relationId, char **schemaName, char **tableName)
{
	char *tempTableName = FUNC2(relationId);

	if (tempTableName != NULL)
	{
		/* ensure proper values are used if the table exists */
		Oid schemaId = FUNC3(relationId);
		(*schemaName) = FUNC1(schemaId);
		(*tableName) = tempTableName;

		FUNC0(relationId);
	}
}