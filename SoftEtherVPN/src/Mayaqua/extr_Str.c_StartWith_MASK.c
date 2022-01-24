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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

bool FUNC4(char *str, char *key)
{
	UINT str_len;
	UINT key_len;
	char *tmp;
	bool ret;
	// Validate arguments
	if (str == NULL || key == NULL)
	{
		return false;
	}

	// Comparison
	str_len = FUNC3(str);
	key_len = FUNC3(key);
	if (str_len < key_len)
	{
		return false;
	}
	if (str_len == 0 || key_len == 0)
	{
		return false;
	}
	tmp = FUNC0(str);
	tmp[key_len] = 0;

	if (FUNC2(tmp, key) == 0)
	{
		ret = true;
	}
	else
	{
		ret = false;
	}

	FUNC1(tmp);

	return ret;
}