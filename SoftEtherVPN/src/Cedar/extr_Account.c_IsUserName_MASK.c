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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 char* ADMINISTRATOR_USERNAME ; 
 char* BRIDGE_USER_NAME ; 
 char* BRIDGE_USER_NAME_PRINT ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  L3_USERNAME ; 
 char* LINK_USER_NAME ; 
 char* LINK_USER_NAME_PRINT ; 
 int MAX_SIZE ; 
 char* SNAT_USER_NAME ; 
 char* SNAT_USER_NAME_PRINT ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

bool FUNC6(char *name)
{
	UINT i, len;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (name == NULL)
	{
		return false;
	}

	FUNC3(tmp, sizeof(tmp), name);
	name = tmp;

	FUNC5(name);

	len = FUNC4(name);
	if (len == 0)
	{
		return false;
	}

	if (FUNC2(name, "*") == 0)
	{
		return true;
	}

	for (i = 0; i < len; i++)
	{
		if (FUNC0(name[i]) == false && name[i] != '@')
		{
			return false;
		}
	}

	if (FUNC2(name, LINK_USER_NAME) == 0)
	{
		return false;
	}

	if (FUNC1(name, L3_USERNAME))
	{
		return false;
	}

	if (FUNC2(name, LINK_USER_NAME_PRINT) == 0)
	{
		return false;
	}

	if (FUNC2(name, SNAT_USER_NAME) == 0)
	{
		return false;
	}

	if (FUNC2(name, SNAT_USER_NAME_PRINT) == 0)
	{
		return false;
	}

	if (FUNC2(name, BRIDGE_USER_NAME) == 0)
	{
		return false;
	}

	if (FUNC2(name, BRIDGE_USER_NAME_PRINT) == 0)
	{
		return false;
	}

	if (FUNC2(name, ADMINISTRATOR_USERNAME) == 0)
	{
		return false;
	}

	return true;
}