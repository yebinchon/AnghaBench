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
typedef  int UINT ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(char *str, UINT *start, UINT *end)
{
	UINT a = 0, b = 0;
	TOKEN_LIST *t;
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	if (FUNC1(str) == false)
	{

		t = FUNC2(str, "\t -");

		if (t->NumTokens == 1)
		{
			a = b = FUNC3(t->Token[0]);
		}
		else if (t->NumTokens == 2)
		{
			a = FUNC3(t->Token[0]);
			b = FUNC3(t->Token[1]);
		}

		FUNC0(t);

		if (a > b)
		{
			return false;
		}

		if (a >= 65536 || b >= 65536)
		{
			return false;
		}

		if (a == 0 && b != 0)
		{
			return false;
		}
	}

	if (start != NULL)
	{
		*start = a;
	}
	if (end != NULL)
	{
		*end = b;
	}

	return true;
}