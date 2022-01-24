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
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 size_t FUNC1 (char*) ; 

void FUNC2(char *str)
{
	UINT i, len;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}

	FUNC0(str, '?');

	len = FUNC1(str);
	for (i = 0;i < len;i++)
	{
		if (str[i] == ',')
		{
			str[i] = '.';
		}
		else if (str[i] == ' ')
		{
			str[i] = '_';
		}
	}
}