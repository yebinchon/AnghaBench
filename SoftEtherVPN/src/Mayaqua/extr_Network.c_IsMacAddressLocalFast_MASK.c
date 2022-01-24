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
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * local_mac_list ; 
 int /*<<< orphan*/  local_mac_list_lock ; 

bool FUNC4(void *addr)
{
	bool ret = false;
	// Validate arguments
	if (addr == NULL)
	{
		return false;
	}

	FUNC1(local_mac_list_lock);
	{
		if (local_mac_list == NULL)
		{
			// First enumeration
			FUNC2();
		}

		ret = FUNC0(local_mac_list, addr);
	}
	FUNC3(local_mac_list_lock);

	return ret;
}