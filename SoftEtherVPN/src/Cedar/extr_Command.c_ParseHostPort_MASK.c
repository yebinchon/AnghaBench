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
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC4 (char*,char**,scalar_t__*,scalar_t__) ; 
 TYPE_1__* FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

bool FUNC12(char *src, char **host, UINT *port, UINT default_port)
{
	TOKEN_LIST *t;
	bool ret = false;
	// Validate arguments
	if (src == NULL)
	{
		return false;
	}

	if (FUNC7(src, "["))
	{
		if (FUNC2(src, "]"))
		{
			// Format of [target]:port
			UINT i, n;
			char tmp[MAX_SIZE];

			FUNC8(tmp, sizeof(tmp), src);

			n = FUNC6(tmp, "]", 0, false);
			if (n != INFINITE)
			{
				UINT len = FUNC9(tmp);

				for (i = n;i < len;i++)
				{
					if (tmp[i] == ':')
					{
						tmp[i] = '@';
					}
				}
			}

			return FUNC4(tmp, host, port, default_port);
		}
	}

	if (FUNC2(src, "@"))
	{
		// It is separated by @
		return FUNC4(src, host, port, default_port);
	}

	t = FUNC5(src, ":");
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

		if (FUNC10(t->Token[1]) == 0)
		{
			FUNC1(t);
			return false;
		}
	}

	if (t->NumTokens >= 2 && FUNC10(t->Token[1]) == 0)
	{
		FUNC1(t);
		return false;
	}

	if (t->NumTokens >= 1 && FUNC3(t->Token[0]) == false)
	{
		ret = true;

		if (host != NULL)
		{
			*host = FUNC0(t->Token[0]);
			FUNC11(*host);
		}

		if (t->NumTokens >= 2)
		{
			if (port != NULL)
			{
				*port = FUNC10(t->Token[1]);
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