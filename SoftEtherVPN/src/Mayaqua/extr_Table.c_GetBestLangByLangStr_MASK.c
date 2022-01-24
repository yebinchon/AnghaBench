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
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * LangList; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ LANGLIST ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

LANGLIST *FUNC5(LIST *o, char *str)
{
	UINT i;
	LANGLIST *ret;
	// Validate arguments
	if (o == NULL)
	{
		return NULL;
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		LANGLIST *e = FUNC1(o, i);
		UINT j;

		for (j = 0;j < FUNC2(e->LangList);j++)
		{
			char *v = FUNC1(e->LangList, j);

			if (FUNC4(v, str) == 0)
			{
				return e;
			}
		}
	}

	for (i = 0;i < FUNC2(o);i++)
	{
		LANGLIST *e = FUNC1(o, i);
		UINT j;

		for (j = 0;j < FUNC2(e->LangList);j++)
		{
			char *v = FUNC1(e->LangList, j);

			if (FUNC3(str, v) || FUNC3(v, str))
			{
				return e;
			}
		}
	}

	ret = FUNC0(o, "en");

	return ret;
}