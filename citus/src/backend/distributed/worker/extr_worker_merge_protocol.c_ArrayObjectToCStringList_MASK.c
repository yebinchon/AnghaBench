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
typedef  size_t int32 ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static List *
FUNC5(ArrayType *arrayObject)
{
	List *cstringList = NIL;
	Datum *datumArray = FUNC2(arrayObject);
	int32 arraySize = FUNC0(arrayObject);

	int32 arrayIndex = 0;
	for (arrayIndex = 0; arrayIndex < arraySize; arrayIndex++)
	{
		Datum datum = datumArray[arrayIndex];
		char *cstring = FUNC3(datum);

		cstringList = FUNC4(cstringList, cstring);
	}

	FUNC1(cstringList != NIL);
	return cstringList;
}