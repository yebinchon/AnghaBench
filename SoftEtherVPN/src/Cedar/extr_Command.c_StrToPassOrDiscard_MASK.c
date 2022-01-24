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
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 

bool FUNC2(char *str)
{
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	if (FUNC1(str) != 0)
	{
		return true;
	}

	if (FUNC0(str, "p") || FUNC0(str, "y") || FUNC0(str, "t"))
	{
		return true;
	}

	return false;
}