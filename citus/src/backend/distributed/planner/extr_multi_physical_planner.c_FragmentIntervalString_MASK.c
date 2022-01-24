#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  maxValue; int /*<<< orphan*/  minValue; int /*<<< orphan*/  maxValueExists; int /*<<< orphan*/  minValueExists; int /*<<< orphan*/  valueTypeId; } ;
typedef  int /*<<< orphan*/ * StringInfo ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static StringInfo
FUNC7(ShardInterval *fragmentInterval)
{
	StringInfo fragmentIntervalString = NULL;
	Oid typeId = fragmentInterval->valueTypeId;
	Oid outputFunctionId = InvalidOid;
	bool typeVariableLength = false;
	FmgrInfo *outputFunction = NULL;
	char *minValueString = NULL;
	char *maxValueString = NULL;

	FUNC0(fragmentInterval->minValueExists);
	FUNC0(fragmentInterval->maxValueExists);

	outputFunction = (FmgrInfo *) FUNC6(sizeof(FmgrInfo));
	FUNC4(typeId, &outputFunctionId, &typeVariableLength);
	FUNC3(outputFunctionId, outputFunction);

	minValueString = FUNC1(outputFunction, fragmentInterval->minValue);
	maxValueString = FUNC1(outputFunction, fragmentInterval->maxValue);

	fragmentIntervalString = FUNC5();
	FUNC2(fragmentIntervalString, "[%s,%s]", minValueString, maxValueString);

	return fragmentIntervalString;
}