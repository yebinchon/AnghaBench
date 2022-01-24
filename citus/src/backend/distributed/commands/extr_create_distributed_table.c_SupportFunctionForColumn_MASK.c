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
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_3__ {scalar_t__ vartype; } ;
typedef  TYPE_1__ Var ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC10(Var *partitionColumn, Oid accessMethodId,
						 int16 supportFunctionNumber)
{
	Oid operatorFamilyId = InvalidOid;
	Oid supportFunctionOid = InvalidOid;
	Oid operatorClassInputType = InvalidOid;
	Oid columnOid = partitionColumn->vartype;
	Oid operatorClassId = FUNC0(columnOid, accessMethodId);

	/* currently only support using the default operator class */
	if (operatorClassId == InvalidOid)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_UNDEFINED_OBJECT),
						FUNC5("data type %s has no default operator class for specified"
							   " partition method", FUNC6(columnOid)),
						FUNC3(columnOid),
						FUNC4("Partition column types must have a default operator"
								  " class defined.")));
	}

	operatorFamilyId = FUNC7(operatorClassId);
	operatorClassInputType = FUNC8(operatorClassId);
	supportFunctionOid = FUNC9(operatorFamilyId, operatorClassInputType,
										   operatorClassInputType,
										   supportFunctionNumber);

	return supportFunctionOid;
}