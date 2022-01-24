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
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

bool FUNC6(char *src, char **host, UINT *port, UINT default_port)
{
	TOKEN_LIST *t;
	bool ret = false;
	// Validate arguments
	if (src == NULL)
	{
		return false;
	}

	t = FUNC3(src, "@");
	if (t == NULL)
	{
		return false;
	}

	if (port != NULL)
	{
		*port = 0;
	}

	if (default_port == 0)
	{
		if (t->NumTokens < 2)
		{
			FUNC1(t);
			return false;
		}

		if (FUNC4(t->Token[1]) == 0)
		{
			FUNC1(t);
			return false;
		}
	}

	if (t->NumTokens >= 2 && FUNC4(t->Token[1]) == 0)
	{
		FUNC1(t);
		return false;
	}

	if (t->NumTokens >= 1 && FUNC2(t->Token[0]) == false)
	{
		ret = true;

		if (host != NULL)
		{
			*host = FUNC0(t->Token[0]);
			FUNC5(*host);
		}

		if (t->NumTokens >= 2)
		{
			if (port != NULL)
			{
				*port = FUNC4(t->Token[1]);
			}
		}
	}

	if (port != NULL)
	{
		if (*port == 0)
		{
			*port = default_port;
		}
	}

	FUNC1(t);

	return ret;
}