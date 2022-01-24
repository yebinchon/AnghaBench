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
typedef  size_t JoinRuleType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CARTESIAN_PRODUCT ; 
 size_t DUAL_PARTITION_JOIN ; 
 size_t LOCAL_PARTITION_JOIN ; 
 size_t REFERENCE_JOIN ; 
 char** RuleNameArray ; 
 size_t SINGLE_HASH_PARTITION_JOIN ; 
 size_t SINGLE_RANGE_PARTITION_JOIN ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(JoinRuleType ruleType)
{
	static bool ruleNamesInitialized = false;
	char *ruleName = NULL;

	if (!ruleNamesInitialized)
	{
		/* use strdup() to be independent of memory contexts */
		RuleNameArray[REFERENCE_JOIN] = FUNC1("reference join");
		RuleNameArray[LOCAL_PARTITION_JOIN] = FUNC1("local partition join");
		RuleNameArray[SINGLE_HASH_PARTITION_JOIN] =
			FUNC1("single hash partition join");
		RuleNameArray[SINGLE_RANGE_PARTITION_JOIN] =
			FUNC1("single range partition join");
		RuleNameArray[DUAL_PARTITION_JOIN] = FUNC1("dual partition join");
		RuleNameArray[CARTESIAN_PRODUCT] = FUNC1("cartesian product");

		ruleNamesInitialized = true;
	}

	ruleName = RuleNameArray[ruleType];
	FUNC0(ruleName != NULL);

	return ruleName;
}