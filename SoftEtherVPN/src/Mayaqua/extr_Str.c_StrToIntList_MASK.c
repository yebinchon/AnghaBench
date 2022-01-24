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
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

LIST *FUNC7(char *str, bool sorted)
{
	LIST *o;
	TOKEN_LIST *t;

	o = FUNC4(sorted);

	t = FUNC5(str, " ,/;\t");

	if (t != NULL)
	{
		UINT i;

		for (i = 0;i < t->NumTokens;i++)
		{
			char *s = t->Token[i];

			if (FUNC2(s) == false)
			{
				if (FUNC3(s))
				{
					FUNC1(o, FUNC6(s));
				}
			}
		}

		FUNC0(t);
	}

	return o;
}