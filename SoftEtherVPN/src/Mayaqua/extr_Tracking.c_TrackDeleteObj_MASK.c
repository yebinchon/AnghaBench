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
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  TRACKING_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(UINT64 addr)
{
	TRACKING_OBJECT *o;
	// Validate arguments
	if (addr == 0)
	{
		return;
	}

	if ((FUNC3() && FUNC2()) == false)
	{
		// Don't track in detail if the memory check option is not specified
		return;
	}

	FUNC4();
	{
		o = FUNC5(addr);
		if (o == NULL)
		{
			FUNC6();
			FUNC0("TrackDeleteObj(): 0x%x not found in tracking list!\n", addr);
			return;
		}
		FUNC1(o, true);
	}
	FUNC6();
}