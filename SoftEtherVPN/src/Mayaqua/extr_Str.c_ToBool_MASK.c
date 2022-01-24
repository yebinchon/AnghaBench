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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(char *str)
{
	char tmp[MAX_SIZE];
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	FUNC2(tmp, sizeof(tmp), str);
	FUNC4(tmp);

	if (FUNC0(tmp))
	{
		return false;
	}

	if (FUNC3(tmp) != 0)
	{
		return true;
	}

	if (FUNC1("true", tmp))
	{
		return true;
	}

	if (FUNC1("yes", tmp))
	{
		return true;
	}

	if (FUNC1(tmp, "true"))
	{
		return true;
	}

	if (FUNC1(tmp, "yes"))
	{
		return true;
	}

	return false;
}