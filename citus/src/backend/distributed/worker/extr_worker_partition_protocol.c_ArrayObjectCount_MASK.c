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
typedef  int int32 ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int32
FUNC7(ArrayType *arrayObject)
{
	int32 dimensionCount = FUNC1(arrayObject);
	int32 *dimensionLengthArray = FUNC0(arrayObject);
	int32 arrayLength = 0;

	if (dimensionCount == 0)
	{
		return 0;
	}

	/* we currently allow split point arrays to have only one subarray */
	FUNC3(dimensionCount == 1);

	arrayLength = FUNC2(dimensionCount, dimensionLengthArray);
	if (arrayLength <= 0)
	{
		FUNC4(ERROR, (FUNC5(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
						FUNC6("worker array object cannot be empty")));
	}

	return arrayLength;
}