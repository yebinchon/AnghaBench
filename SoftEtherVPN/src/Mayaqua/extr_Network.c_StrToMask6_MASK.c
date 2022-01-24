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
typedef  int UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*) ; 

bool FUNC5(IP *mask, char *str)
{
	// Validate arguments
	if (mask == NULL || str == NULL)
	{
		return false;
	}

	if (str[0] == '/')
	{
		str++;
	}

	if (FUNC2(str))
	{
		UINT n = FUNC4(str);

		if (n <= 128)
		{
			FUNC0(mask, n);
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		if (FUNC3(mask, str) == false)
		{
			return false;
		}
		else
		{
			return FUNC1(mask);
		}
	}
}