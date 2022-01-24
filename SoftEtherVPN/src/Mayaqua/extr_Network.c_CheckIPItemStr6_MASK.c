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

/* Variables and functions */
 int FUNC0 (char*) ; 

bool FUNC1(char *str)
{
	UINT i, len;
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	len = FUNC0(str);
	if (len >= 5)
	{
		// Invalid length
		return false;
	}

	for (i = 0;i < len;i++)
	{
		char c = str[i];

		if ((c >= 'a' && c <= 'f') ||
			(c >= 'A' && c <= 'F') ||
			(c >= '0' && c <= '9'))
		{
		}
		else
		{
			return false;
		}
	}

	return true;
}