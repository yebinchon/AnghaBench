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
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_get_partkeydef ; 

char *
FUNC7(Oid parentTableId)
{
	char *partitionBoundCString = "";
	Datum partitionBoundDatum = 0;

	if (!FUNC2(parentTableId))
	{
		char *relationName = FUNC6(parentTableId);

		FUNC4(ERROR, (FUNC5("\"%s\" is not a parent table", relationName)));
	}

	partitionBoundDatum = FUNC0(pg_get_partkeydef,
											  FUNC1(parentTableId));

	partitionBoundCString = FUNC3(partitionBoundDatum);

	return partitionBoundCString;
}