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
typedef  int /*<<< orphan*/  int16 ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  FmgrInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

FmgrInfo *
FUNC8(Oid typeId, Oid accessMethodId, int16 procedureId)
{
	FmgrInfo *functionInfo = (FmgrInfo *) FUNC7(sizeof(FmgrInfo));

	/* get default operator class from pg_opclass for datum type */
	Oid operatorClassId = FUNC0(typeId, accessMethodId);

	Oid operatorFamilyId = FUNC4(operatorClassId);
	Oid operatorClassInputType = FUNC5(operatorClassId);

	Oid operatorId = FUNC6(operatorFamilyId, operatorClassInputType,
									   operatorClassInputType, procedureId);

	if (operatorId == InvalidOid)
	{
		FUNC1(ERROR, (FUNC2("could not find function for data typeId %u", typeId)));
	}

	/* fill in the FmgrInfo struct using the operatorId */
	FUNC3(operatorId, functionInfo);

	return functionInfo;
}