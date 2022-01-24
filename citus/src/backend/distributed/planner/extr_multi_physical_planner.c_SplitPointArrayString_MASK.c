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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/ * StringInfo ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC6 (scalar_t__) ; 
 char* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__*,int*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 char* FUNC12 (char*) ; 

__attribute__((used)) static StringInfo
FUNC13(ArrayType *splitPointObject, Oid columnType, int32 columnTypeMod)
{
	StringInfo splitPointArrayString = NULL;
	Datum splitPointDatum = FUNC1(splitPointObject);
	Oid outputFunctionId = InvalidOid;
	bool typeVariableLength = false;
	FmgrInfo *arrayOutFunction = NULL;
	char *arrayOutputText = NULL;
	char *arrayOutputEscapedText = NULL;
	char *arrayOutTypeName = NULL;

	Oid arrayOutType = FUNC9(columnType);
	if (arrayOutType == InvalidOid)
	{
		char *columnTypeName = FUNC6(columnType);
		FUNC3(ERROR, (FUNC4("cannot range repartition table on column type %s",
							   columnTypeName)));
	}

	arrayOutFunction = (FmgrInfo *) FUNC11(sizeof(FmgrInfo));
	FUNC8(arrayOutType, &outputFunctionId, &typeVariableLength);
	FUNC5(outputFunctionId, arrayOutFunction);

	arrayOutputText = FUNC0(arrayOutFunction, splitPointDatum);
	arrayOutputEscapedText = FUNC12(arrayOutputText);

	/* add an explicit cast to array's string representation */
	arrayOutTypeName = FUNC7(arrayOutType, columnTypeMod);

	splitPointArrayString = FUNC10();
	FUNC2(splitPointArrayString, "%s::%s",
					 arrayOutputEscapedText, arrayOutTypeName);

	return splitPointArrayString;
}