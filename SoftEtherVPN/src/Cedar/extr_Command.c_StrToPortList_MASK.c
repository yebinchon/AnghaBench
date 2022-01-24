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
struct TYPE_4__ {scalar_t__ NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_PUBLIC_PORT_NUM ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (char*) ; 

LIST *FUNC9(char *str)
{
	LIST *o;
	TOKEN_LIST *t;
	UINT i;
	if (str == NULL)
	{
		return NULL;
	}

	// Convert to token
	t = FUNC6(str, ", ");
	if (t == NULL)
	{
		return NULL;
	}
	if (t->NumTokens == 0)
	{
		FUNC1(t);
		return NULL;
	}

	o = FUNC5(NULL);

	for (i = 0;i < t->NumTokens;i++)
	{
		char *s = t->Token[i];
		UINT n;
		if (FUNC3(s) == false)
		{
			FUNC7(o);
			FUNC1(t);
			return NULL;
		}
		n = FUNC8(s);
		if (n == 0 || n >= 65536)
		{
			FUNC7(o);
			FUNC1(t);
			return NULL;
		}
		if (FUNC2(o, (void *)n))
		{
			FUNC7(o);
			FUNC1(t);
			return NULL;
		}
		FUNC0(o, (void *)n);
	}

	FUNC1(t);

	if (FUNC4(o) > MAX_PUBLIC_PORT_NUM)
	{
		FUNC7(o);
		return NULL;
	}

	return o;
}