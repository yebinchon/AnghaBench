#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_6__ {int natts; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  CopyCoercionData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 

__attribute__((used)) static CopyCoercionData *
FUNC7(TupleDesc destTupleDescriptor, TupleDesc inputTupleDescriptor,
					Oid destRelId, List *columnNameList,
					Oid *finalColumnTypeArray)
{
	int columnIndex = 0;
	int columnCount = inputTupleDescriptor->natts;
	CopyCoercionData *coercePaths = FUNC6(columnCount * sizeof(CopyCoercionData));
	Oid *inputTupleTypes = FUNC1(inputTupleDescriptor);
	ListCell *currentColumnName = FUNC4(columnNameList);

	for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
	{
		Oid destTupleType = InvalidOid;
		Oid inputTupleType = inputTupleTypes[columnIndex];
		char *columnName = FUNC3(currentColumnName);

		if (inputTupleType == InvalidOid)
		{
			/* this was a dropped column and will not be in the incoming tuples */
			continue;
		}

		destTupleType = FUNC2(destRelId, destTupleDescriptor, columnName);

		finalColumnTypeArray[columnIndex] = destTupleType;

		FUNC0(inputTupleType, destTupleType,
							   &coercePaths[columnIndex]);

		currentColumnName = FUNC5(currentColumnName);

		if (currentColumnName == NULL)
		{
			/* the rest of inputTupleDescriptor are dropped columns, return early! */
			break;
		}
	}

	return coercePaths;
}