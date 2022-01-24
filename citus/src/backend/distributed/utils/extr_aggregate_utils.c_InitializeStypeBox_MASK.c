#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  aggcombinefn; int /*<<< orphan*/  aggserialfn; int /*<<< orphan*/  aggdeserialfn; int /*<<< orphan*/  aggtransfn; int /*<<< orphan*/  aggfinalfn; int /*<<< orphan*/  aggfnoid; } ;
struct TYPE_4__ {int valueInit; scalar_t__ value; scalar_t__ valueNull; int /*<<< orphan*/  transtype; } ;
typedef  TYPE_1__ StypeBox ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_2__* Form_pg_aggregate ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Anum_pg_aggregate_agginitval ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_AGGREGATE ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(FunctionCallInfo fcinfo, StypeBox *box, HeapTuple aggTuple, Oid
				   transtype)
{
	Datum textInitVal;
	Form_pg_aggregate aggform = (Form_pg_aggregate) FUNC1(aggTuple);
	Oid userId = FUNC2();

	/* First we make ACL_EXECUTE checks as would be done in nodeAgg.c */
	FUNC7(OBJECT_AGGREGATE, userId, aggform->aggfnoid);
	FUNC7(OBJECT_FUNCTION, userId, aggform->aggfinalfn);
	FUNC7(OBJECT_FUNCTION, userId, aggform->aggtransfn);
	FUNC7(OBJECT_FUNCTION, userId, aggform->aggdeserialfn);
	FUNC7(OBJECT_FUNCTION, userId, aggform->aggserialfn);
	FUNC7(OBJECT_FUNCTION, userId, aggform->aggcombinefn);

	textInitVal = FUNC5(AGGFNOID, aggTuple,
								  Anum_pg_aggregate_agginitval,
								  &box->valueNull);
	box->transtype = transtype;
	box->valueInit = !box->valueNull;
	if (box->valueNull)
	{
		box->value = (Datum) 0;
	}
	else
	{
		Oid typinput,
			typioparam;
		char *strInitVal;

		MemoryContext aggregateContext;
		MemoryContext oldContext;
		if (!FUNC0(fcinfo, &aggregateContext))
		{
			FUNC8(ERROR, "InitializeStypeBox called from non aggregate context");
		}
		oldContext = FUNC3(aggregateContext);

		FUNC9(transtype, &typinput, &typioparam);
		strInitVal = FUNC6(textInitVal);
		box->value = FUNC4(typinput, strInitVal,
										  typioparam, -1);
		FUNC10(strInitVal);

		FUNC3(oldContext);
	}
}