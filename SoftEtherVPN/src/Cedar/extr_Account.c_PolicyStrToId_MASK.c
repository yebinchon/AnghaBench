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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 scalar_t__ INFINITE ; 
 scalar_t__ NUM_POLICY_ITEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

UINT FUNC2(char *name)
{
	UINT i;
	// Validate arguments
	if (name == NULL)
	{
		return INFINITE;
	}

	for (i = 0;i < NUM_POLICY_ITEM;i++)
	{
		if (FUNC1(FUNC0(i), name))
		{
			return i;
		}
	}

	return INFINITE;
}