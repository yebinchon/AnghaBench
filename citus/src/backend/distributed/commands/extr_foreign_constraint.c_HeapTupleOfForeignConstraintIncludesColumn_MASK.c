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
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTROID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT2OID ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(HeapTuple heapTuple, Oid relationId,
										   int pgConstraintKey, char *columnName)
{
	Datum columnsDatum = 0;
	Datum *columnArray = NULL;
	int columnCount = 0;
	int attrIdx = 0;
	bool isNull = false;

	columnsDatum = FUNC2(CONSTROID, heapTuple, pgConstraintKey, &isNull);
	FUNC3(FUNC0(columnsDatum), INT2OID, 2, true,
					  's', &columnArray, NULL, &columnCount);

	for (attrIdx = 0; attrIdx < columnCount; ++attrIdx)
	{
		AttrNumber attrNo = FUNC1(columnArray[attrIdx]);

		char *colName = FUNC4(relationId, attrNo, false);
		if (FUNC5(colName, columnName, NAMEDATALEN) == 0)
		{
			return true;
		}
	}

	return false;
}