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
struct TYPE_3__ {int /*<<< orphan*/  Server; int /*<<< orphan*/  CurrentRegionLock; int /*<<< orphan*/  CurrentRegion; } ;
typedef  TYPE_1__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(CEDAR *c, char *region, bool force_update)
{
	bool changed = false;
	// Validate arguments
	if (c == NULL)
	{
		return;
	}

	if (FUNC1(region) == false)
	{
		FUNC2(c->CurrentRegionLock);
		{
			if (FUNC3(c->CurrentRegion, region) != 0)
			{
				FUNC4(c->CurrentRegion, sizeof(c->CurrentRegion), region);
				changed = true;
			}
		}
		FUNC5(c->CurrentRegionLock);
	}

	if (force_update)
	{
		changed = true;
	}

	if (changed)
	{
		FUNC0(c->Server);
	}
}