#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  work_mem ; 

__attribute__((used)) static Tuplestorestate *
FUNC10(TupleDesc tupleDescriptor,
				 StringInfo *nodeNameArray, int *nodePortArray, bool *statusArray,
				 StringInfo *resultArray, int commandCount)
{
	Tuplestorestate *tupleStore = FUNC7(true, false, work_mem);
	int commandIndex = 0;
	bool nulls[4] = { false, false, false, false };

	for (commandIndex = 0; commandIndex < commandCount; commandIndex++)
	{
		Datum values[4];
		HeapTuple tuple = NULL;
		StringInfo nodeNameString = nodeNameArray[commandIndex];
		StringInfo resultString = resultArray[commandIndex];
		text *nodeNameText = FUNC3(nodeNameString->data,
													  nodeNameString->len);
		text *resultText = FUNC3(resultString->data,
													resultString->len);

		values[0] = FUNC2(nodeNameText);
		values[1] = FUNC1(nodePortArray[commandIndex]);
		values[2] = FUNC0(statusArray[commandIndex]);
		values[3] = FUNC2(resultText);

		tuple = FUNC4(tupleDescriptor, values, nulls);
		FUNC9(tupleStore, tuple);

		FUNC5(tuple);
		FUNC6(nodeNameText);
		FUNC6(resultText);
	}

	FUNC8(tupleStore);

	return tupleStore;
}