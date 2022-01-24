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
typedef  int uint32 ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

__attribute__((used)) static FmgrInfo *
FUNC4(uint32 columnCount, Oid *typeIdArray, bool binaryFormat)
{
	FmgrInfo *columnOutputFunctions = FUNC3(columnCount * sizeof(FmgrInfo));

	uint32 columnIndex = 0;
	for (columnIndex = 0; columnIndex < columnCount; columnIndex++)
	{
		FmgrInfo *currentOutputFunction = &columnOutputFunctions[columnIndex];
		Oid columnTypeId = typeIdArray[columnIndex];
		bool typeVariableLength = false;
		Oid outputFunctionId = InvalidOid;

		/* If there are any dropped columns it'll show up as a NULL */
		if (columnTypeId == InvalidOid)
		{
			continue;
		}
		else if (binaryFormat)
		{
			FUNC1(columnTypeId, &outputFunctionId, &typeVariableLength);
		}
		else
		{
			FUNC2(columnTypeId, &outputFunctionId, &typeVariableLength);
		}

		FUNC0(outputFunctionId, currentOutputFunction);
	}

	return columnOutputFunctions;
}