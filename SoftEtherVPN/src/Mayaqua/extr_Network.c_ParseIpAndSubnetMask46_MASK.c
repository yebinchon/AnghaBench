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
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC4(char *src, IP *ip, IP *mask)
{
	// Validate arguments
	if (src == NULL || ip == NULL || mask == NULL)
	{
		return false;
	}

	if (FUNC3(src, ip, mask) == false)
	{
		return false;
	}

	if (FUNC0(ip))
	{
		return FUNC1(mask);
	}
	else
	{
		return FUNC2(mask);
	}
}