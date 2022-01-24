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
 size_t FUNC0 (char*) ; 
 char FUNC1 (char) ; 
 char* default_spliter ; 

bool FUNC2(char c, char *split_str)
{
	UINT i, len;
	char c_upper = FUNC1(c);
	if (split_str == NULL)
	{
		split_str = default_spliter;
	}

	len = FUNC0(split_str);

	for (i = 0;i < len;i++)
	{
		if (FUNC1(split_str[i]) == c_upper)
		{
			return true;
		}
	}

	return false;
}