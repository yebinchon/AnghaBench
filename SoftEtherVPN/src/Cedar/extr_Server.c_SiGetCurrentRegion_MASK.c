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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {char* CurrentRegion; int /*<<< orphan*/  CurrentRegionLock; } ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SE_LANG_CHINESE_ZH ; 
 scalar_t__ SE_LANG_JAPANESE ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CEDAR *c, char *region, UINT region_size)
{
	FUNC0(region, region_size);
	// Validate arguments
	if (c == NULL || region == NULL)
	{
		return;
	}

	FUNC3(c->CurrentRegionLock);
	{
		FUNC4(region, region_size, c->CurrentRegion);
	}
	FUNC5(c->CurrentRegionLock);

	if (FUNC2(region))
	{
		if (FUNC1() == SE_LANG_JAPANESE)
		{
			FUNC4(region, region_size, "JP");
		}
		else if (FUNC1() == SE_LANG_CHINESE_ZH)
		{
			FUNC4(region, region_size, "CN");
		}
	}
}