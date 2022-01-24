#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

TOKEN_LIST *FUNC8(char *input_name, TOKEN_LIST *real_name_list)
{
	TOKEN_LIST *ret;
	LIST *o;
	UINT i;
	bool ok = false;
	// Validate arguments
	if (input_name == NULL || real_name_list == NULL)
	{
		return FUNC5();
	}

	o = FUNC4(NULL);

	for (i = 0;i < real_name_list->NumTokens;i++)
	{
		char *name = real_name_list->Token[i];

		// Search for an exact match with the highest priority first
		if (FUNC7(name, input_name) == 0)
		{
			FUNC0(o, name);
			ok = true;
			break;
		}
	}

	if (ok == false)
	{
		// If there is no command to exact match, check whether it matches to a short form command
		for (i = 0;i < real_name_list->NumTokens;i++)
		{
			char *name = real_name_list->Token[i];

			if (FUNC2(input_name, name) || FUNC1(input_name, name))
			{
				// A abbreviation is found
				FUNC0(o, name);
				ok = true;
			}
		}
	}

	if (ok)
	{
		// One or more candidate is found
		ret = FUNC3(o);
	}
	else
	{
		ret = FUNC5();
	}

	FUNC6(o);

	return ret;
}