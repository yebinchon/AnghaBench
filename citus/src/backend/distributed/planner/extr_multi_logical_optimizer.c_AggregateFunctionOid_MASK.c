#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* values; } ;
struct TYPE_4__ {int pronargs; scalar_t__ oid; TYPE_1__ proargtypes; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 scalar_t__ ANYELEMENTOID ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_proc_proname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  ProcedureNameArgsNspIndexId ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Oid
FUNC13(const char *functionName, Oid inputType)
{
	Oid functionOid = InvalidOid;
	Relation procRelation = NULL;
	SysScanDesc scanDescriptor = NULL;
	ScanKeyData scanKey[1];
	int scanKeyCount = 1;
	HeapTuple heapTuple = NULL;

	procRelation = FUNC9(ProcedureRelationId, AccessShareLock);

	FUNC5(&scanKey[0], Anum_pg_proc_proname,
				BTEqualStrategyNumber, F_NAMEEQ, FUNC1(functionName));

	scanDescriptor = FUNC10(procRelation,
										ProcedureNameArgsNspIndexId, true,
										NULL, scanKeyCount, scanKey);

	/* loop until we find the right function */
	heapTuple = FUNC12(scanDescriptor);
	while (FUNC4(heapTuple))
	{
		Form_pg_proc procForm = (Form_pg_proc) FUNC2(heapTuple);
		int argumentCount = procForm->pronargs;

		if (argumentCount == 1)
		{
			/* check if input type and found value type match */
			if (procForm->proargtypes.values[0] == inputType ||
				procForm->proargtypes.values[0] == ANYELEMENTOID)
			{
#if PG_VERSION_NUM < 120000
				functionOid = FUNC3(heapTuple);
#else
				functionOid = procForm->oid;
#endif
				break;
			}
		}
		FUNC0(argumentCount <= 1);

		heapTuple = FUNC12(scanDescriptor);
	}

	if (functionOid == InvalidOid)
	{
		FUNC6(ERROR, (FUNC7("no matching oid for function: %s", functionName)));
	}

	FUNC11(scanDescriptor);
	FUNC8(procRelation, AccessShareLock);

	return functionOid;
}