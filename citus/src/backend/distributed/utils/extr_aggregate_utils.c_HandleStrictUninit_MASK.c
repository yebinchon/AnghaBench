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
struct TYPE_3__ {int valueNull; int valueInit; int /*<<< orphan*/  transtypeLen; int /*<<< orphan*/  transtypeByVal; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ StypeBox ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(StypeBox *box, FunctionCallInfo fcinfo, Datum value)
{
	MemoryContext aggregateContext;
	MemoryContext oldContext;

	if (!FUNC0(fcinfo, &aggregateContext))
	{
		FUNC3(ERROR, "HandleStrictUninit called from non aggregate context");
	}

	oldContext = FUNC1(aggregateContext);
	box->value = FUNC2(value, box->transtypeByVal, box->transtypeLen);
	FUNC1(oldContext);

	box->valueNull = false;
	box->valueInit = true;
}