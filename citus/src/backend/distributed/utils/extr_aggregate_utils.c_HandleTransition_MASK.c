#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  eoh_context; } ;
struct TYPE_10__ {int isnull; } ;
struct TYPE_9__ {int valueNull; int /*<<< orphan*/  value; int /*<<< orphan*/  transtypeLen; int /*<<< orphan*/  transtypeByVal; } ;
typedef  TYPE_1__ StypeBox ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__* FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ CurrentMemoryContext ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11(StypeBox *box, FunctionCallInfo fcinfo, FunctionCallInfo innerFcinfo)
{
	Datum newVal = FUNC5(innerFcinfo);
	bool newValIsNull = innerFcinfo->isnull;

	if (!box->transtypeByVal &&
		FUNC2(newVal) != FUNC2(box->value))
	{
		if (!newValIsNull)
		{
			MemoryContext aggregateContext;
			MemoryContext oldContext;

			if (!FUNC0(fcinfo, &aggregateContext))
			{
				FUNC9(ERROR,
					 "HandleTransition called from non aggregate context");
			}

			oldContext = FUNC7(aggregateContext);
			if (!(FUNC3(newVal,
												 false, box->transtypeLen) &&
				  FUNC6(FUNC1(newVal)->eoh_context) ==
				  CurrentMemoryContext))
			{
				newVal = FUNC8(newVal, box->transtypeByVal, box->transtypeLen);
			}
			FUNC7(oldContext);
		}

		if (!box->valueNull)
		{
			if (FUNC3(box->value,
											   false, box->transtypeLen))
			{
				FUNC4(box->value);
			}
			else
			{
				FUNC10(FUNC2(box->value));
			}
		}
	}

	box->value = newVal;
	box->valueNull = newValIsNull;
}