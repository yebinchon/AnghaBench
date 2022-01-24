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
typedef  int wchar_t ;
typedef  size_t UINT ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t FUNC1 (int*) ; 

bool FUNC2(wchar_t *str)
{
	UINT i, len;
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	len = FUNC1(str);
	for (i = 0;i < len;i++)
	{
		if (FUNC0(str[i]) == false)
		{
			return false;
		}
	}
	if (str[0] == L' ')
	{
		return false;
	}
	if (len != 0)
	{
		if (str[len - 1] == L' ')
		{
			return false;
		}
	}
	return true;
}