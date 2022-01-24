#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {size_t NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 

bool FUNC3(char *target_str, char *tokens, char *splitter, bool case_sensitive)
{
	TOKEN_LIST *t;
	bool ret = false;
	UINT i;
	// Validate arguments
	if (target_str == NULL || tokens == NULL || splitter == NULL)
	{
		return false;
	}

	t = FUNC2(tokens, splitter);

	if (t != NULL)
	{
		for (i = 0;i < t->NumTokens;i++)
		{
			if (FUNC1(target_str, t->Token[i], case_sensitive))
			{
				ret = true;
//				printf("%s\n", t->Token[i]);
			}

			if (ret)
			{
				break;
			}
		}

		FUNC0(t);
	}

	return ret;
}