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
typedef  int /*<<< orphan*/  region ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

bool FUNC2(CEDAR *c)
{
	char region[128];
	bool ret = false;
	// Validate arguments
	if (c == NULL)
	{
		return false;
	}


	FUNC0(c, region, sizeof(region));

	if (FUNC1(region, "JP") == 0 || FUNC1(region, "CN") == 0)
	{
		ret = true;
	}

	return ret;
}