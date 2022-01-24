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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/ * StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY_OUT_FUNC_ID ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static StringInfo
FUNC9(Datum *datumArray, uint32 datumCount, Oid datumTypeId)
{
	StringInfo arrayStringInfo = NULL;
	FmgrInfo *arrayOutFunction = NULL;
	ArrayType *arrayObject = NULL;
	Datum arrayObjectDatum = 0;
	Datum arrayStringDatum = 0;
	char *arrayString = NULL;
	int16 typeLength = 0;
	bool typeByValue = false;
	char typeAlignment = 0;

	/* construct the array object from the given array */
	FUNC6(datumTypeId, &typeLength, &typeByValue, &typeAlignment);
	arrayObject = FUNC4(datumArray, datumCount, datumTypeId,
								  typeLength, typeByValue, typeAlignment);
	arrayObjectDatum = FUNC2(arrayObject);

	/* convert the array object to its string representation */
	arrayOutFunction = (FmgrInfo *) FUNC8(sizeof(FmgrInfo));
	FUNC5(ARRAY_OUT_FUNC_ID, arrayOutFunction);

	arrayStringDatum = FUNC1(arrayOutFunction, arrayObjectDatum);
	arrayString = FUNC0(arrayStringDatum);

	arrayStringInfo = FUNC7();
	FUNC3(arrayStringInfo, "%s", arrayString);

	return arrayStringInfo;
}