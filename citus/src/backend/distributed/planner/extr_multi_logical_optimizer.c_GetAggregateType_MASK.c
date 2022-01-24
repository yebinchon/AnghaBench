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
typedef  size_t uint32 ;
typedef  char* Oid ;
typedef  size_t AggregateType ;

/* Variables and functions */
 size_t AGGREGATE_CUSTOM ; 
 scalar_t__ AGGREGATE_INVALID_FIRST ; 
 scalar_t__ FUNC0 (char*) ; 
 char** AggregateNames ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 size_t FUNC5 (char**) ; 
 scalar_t__ FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AggregateType
FUNC7(Oid aggFunctionId)
{
	char *aggregateProcName = NULL;
	uint32 aggregateCount = 0;
	uint32 aggregateIndex = 0;
	bool found = false;

	/* look up the function name */
	aggregateProcName = FUNC4(aggFunctionId);
	if (aggregateProcName == NULL)
	{
		FUNC2(ERROR, (FUNC3("citus cache lookup failed for function %u",
							   aggFunctionId)));
	}

	aggregateCount = FUNC5(AggregateNames);

	FUNC1(AGGREGATE_INVALID_FIRST == 0);

	for (aggregateIndex = 1; aggregateIndex < aggregateCount; aggregateIndex++)
	{
		const char *aggregateName = AggregateNames[aggregateIndex];
		if (FUNC6(aggregateName, aggregateProcName, NAMEDATALEN) == 0)
		{
			found = true;
			break;
		}
	}

	if (!found)
	{
		if (FUNC0(aggFunctionId))
		{
			return AGGREGATE_CUSTOM;
		}

		FUNC2(ERROR, (FUNC3("unsupported aggregate function %s", aggregateProcName)));
	}

	return aggregateIndex;
}