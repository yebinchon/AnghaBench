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
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,int /*<<< orphan*/ ) ; 

bool FUNC9(char *name, UINT size)
{
	bool ret = false;
	char *s;
	BUF *b;
	// Validate arguments
	if (name == NULL)
	{
		return false;
	}

	b = FUNC5("/etc/hosts");
	if (b == NULL)
	{
		return false;
	}

	while (true)
	{
		s = FUNC0(b);
		if (s == NULL)
		{
			break;
		}
		else
		{
			TOKEN_LIST *t = FUNC4(s, " \t");

			if (t != NULL)
			{
				if (t->NumTokens >= 2)
				{
					if (FUNC7(t->Token[0], "127.0.0.1") == 0)
					{
						UINT i;

						for (i = 1;i < t->NumTokens;i++)
						{
							if (FUNC6(t->Token[i], "localhost") == false)
							{
								FUNC8(name, size, t->Token[i]);
								ret = true;
							}
						}
					}
				}
			}
			FUNC3(t);
		}

		FUNC1(s);
	}

	FUNC2(b);

	return ret;
}