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
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 void* FUNC11 (int) ; 

TOKEN_LIST *FUNC12(char *str)
{
	TOKEN_LIST *t;
	LIST *o;
	UINT i, len, wp, mode;
	char c;
	char *tmp;
	bool ignore_space = false;
	// Validate arguments
	if (str == NULL)
	{
		// There is no token
		return FUNC7();
	}

	o = FUNC6(NULL);
	tmp = FUNC5(FUNC10(str) + 32);

	wp = 0;
	mode = 0;

	len = FUNC9(str);
	for (i = 0;i < len;i++)
	{
		c = str[i];

		switch (mode)
		{
		case 0:
			// Mode to discover the next token
			if (c == ' ' || c == '\t')
			{
				// Advance to the next character
			}
			else
			{
				// Start of the token
				if (c == '\"')
				{
					if (str[i + 1] == '\"')
					{
						// Regard "" as a single "
						tmp[wp++] = '\"';
						i++;
					}
					else
					{
						// Enable the ignoring space flag for a single "
						ignore_space = true;
					}
				}
				else
				{
					tmp[wp++] = c;
				}

				mode = 1;
			}
			break;

		case 1:
			if (ignore_space == false && (c == ' ' || c == '\t'))
			{
				// End of the token
				tmp[wp++] = 0;
				wp = 0;

				FUNC2(o, FUNC0(tmp));
				mode = 0;
			}
			else
			{
				if (c == '\"')
				{
					if (str[i + 1] == '\"')
					{
						// Regard "" as a single "
						tmp[wp++] = L'\"';
						i++;
					}
					else
					{
						if (ignore_space == false)
						{
							// Enable the ignoring space flag for a single "
							ignore_space = true;
						}
						else
						{
							// Disable the space ignore flag
							ignore_space = false;
						}
					}
				}
				else
				{
					tmp[wp++] = c;
				}
			}
			break;
		}
	}

	if (wp != 0)
	{
		tmp[wp++] = 0;
		FUNC2(o, FUNC0(tmp));
	}

	FUNC1(tmp);

	t = FUNC11(sizeof(TOKEN_LIST));
	t->NumTokens = FUNC4(o);
	t->Token = FUNC11(sizeof(char *) * t->NumTokens);
	for (i = 0;i < t->NumTokens;i++)
	{
		t->Token[i] = FUNC3(o, i);
	}

	FUNC8(o);

	return t;
}