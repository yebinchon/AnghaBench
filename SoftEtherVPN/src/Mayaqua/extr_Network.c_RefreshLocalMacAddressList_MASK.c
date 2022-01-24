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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * local_mac_list ; 
 int /*<<< orphan*/  local_mac_list_lock ; 

void FUNC4()
{
	FUNC2(local_mac_list_lock);
	{
		if (local_mac_list != NULL)
		{
			FUNC0(local_mac_list);
		}

		local_mac_list = FUNC1();
	}
	FUNC3(local_mac_list_lock);
}