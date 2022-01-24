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
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 

bool FUNC2(char *str, char *keyword, bool case_sensitive)
{
	// Validate arguments
	if (FUNC0(str) || FUNC0(keyword))
	{
		return false;
	}

	if (FUNC1(str, keyword, 0, case_sensitive) == INFINITE)
	{
		return false;
	}

	return true;
}