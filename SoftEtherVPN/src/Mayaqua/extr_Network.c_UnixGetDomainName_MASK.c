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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

bool FUNC9(char *name, UINT size)
{
	bool ret = false;
	BUF *b = FUNC5("/etc/resolv.conf");

	if (b == NULL)
	{
		return false;
	}

	while (true)
	{
		char *s = FUNC0(b);
		TOKEN_LIST *t;

		if (s == NULL)
		{
			break;
		}

		FUNC8(s);

		t = FUNC4(s, " \t");
		if (t != NULL)
		{
			if (t->NumTokens == 2)
			{
				if (FUNC6(t->Token[0], "domain") == 0)
				{
					FUNC7(name, size, t->Token[1]);
					ret = true;
				}
			}
			FUNC3(t);
		}

		FUNC1(s);
	}

	FUNC2(b);

	return ret;
}