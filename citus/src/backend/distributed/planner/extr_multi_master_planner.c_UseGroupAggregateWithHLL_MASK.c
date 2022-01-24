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
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HLL_EXTENSION_NAME ; 
 int /*<<< orphan*/  HLL_FORCE_GROUPAGG_GUC_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static bool
FUNC5(Query *masterQuery)
{
	Oid hllId = FUNC3(HLL_EXTENSION_NAME, true);
	const char *gucStrValue = NULL;

	/* If HLL extension is not loaded, return false */
	if (!FUNC1(hllId))
	{
		return false;
	}

	/* If HLL is loaded but related GUC is not set, return false */
	gucStrValue = FUNC0(HLL_FORCE_GROUPAGG_GUC_NAME, true, false);
	if (gucStrValue == NULL || FUNC4(gucStrValue, "off") == 0)
	{
		return false;
	}

	return FUNC2(masterQuery);
}