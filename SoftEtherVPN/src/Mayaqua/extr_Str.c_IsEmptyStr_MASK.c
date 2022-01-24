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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

bool FUNC4(char *str)
{
	char *s;
	// Validate arguments
	if (str == NULL)
	{
		return true;
	}

	s = FUNC0(str);
	FUNC3(s);

	if (FUNC2(s) == 0)
	{
		FUNC1(s);
		return true;
	}
	else
	{
		FUNC1(s);
		return false;
	}
}