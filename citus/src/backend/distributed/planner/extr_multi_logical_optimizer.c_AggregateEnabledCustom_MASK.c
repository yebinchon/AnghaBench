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
struct TYPE_4__ {scalar_t__ aggcombinefn; int /*<<< orphan*/  aggtranstype; } ;
struct TYPE_3__ {scalar_t__ typtype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  TYPE_2__* Form_pg_aggregate ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEOID ; 
 scalar_t__ TYPTYPE_PSEUDO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC5(Oid aggregateOid)
{
	HeapTuple aggTuple;
	Form_pg_aggregate aggform;
	HeapTuple typeTuple;
	Form_pg_type typeform;
	bool supportsSafeCombine;

	aggTuple = FUNC3(AGGFNOID, aggregateOid);
	if (!FUNC1(aggTuple))
	{
		FUNC4(ERROR, "citus cache lookup failed.");
	}
	aggform = (Form_pg_aggregate) FUNC0(aggTuple);

	if (aggform->aggcombinefn == InvalidOid)
	{
		FUNC2(aggTuple);
		return false;
	}

	typeTuple = FUNC3(TYPEOID, aggform->aggtranstype);
	if (!FUNC1(typeTuple))
	{
		FUNC4(ERROR, "citus cache lookup failed.");
	}
	typeform = (Form_pg_type) FUNC0(typeTuple);

	supportsSafeCombine = typeform->typtype != TYPTYPE_PSEUDO;

	FUNC2(aggTuple);
	FUNC2(typeTuple);

	return supportsSafeCombine;
}