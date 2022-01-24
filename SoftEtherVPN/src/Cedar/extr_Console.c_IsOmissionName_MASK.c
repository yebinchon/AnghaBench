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
typedef  int /*<<< orphan*/  oname ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 

bool FUNC6(char *input_name, char *real_name)
{
	char oname[128];
	// Validate arguments
	if (input_name == NULL || real_name == NULL)
	{
		return false;
	}

	if (FUNC2(real_name))
	{
		// Command of all capital letters do not take abbreviations
		return false;
	}

	FUNC1(oname, sizeof(oname), real_name);

	if (FUNC3(oname))
	{
		return false;
	}

	if (FUNC4(oname, input_name))
	{
		// Example: The oname of AccountSecureCertSet is "ascs".
		// But if the user enters "asc", returns true
		return true;
	}

	if (FUNC4(input_name, oname))
	{
		// Example: When two commands AccountCreate and AccountConnect exist,
		// if the user enter "aconnect" , only AccountConnect is true

		if (FUNC0(real_name, &input_name[FUNC5(oname)]))
		{
			return true;
		}
	}

	return false;
}