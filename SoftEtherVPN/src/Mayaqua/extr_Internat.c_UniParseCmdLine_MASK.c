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
typedef  int wchar_t ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 TYPE_1__* FUNC8 () ; 
 size_t FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int*) ; 
 void* FUNC11 (int) ; 

UNI_TOKEN_LIST *FUNC12(wchar_t *str)
{
	UNI_TOKEN_LIST *t;
	LIST *o;
	UINT i, len, wp, mode;
	wchar_t c;
	wchar_t *tmp;
	bool ignore_space = false;
	// Validate arguments
	if (str == NULL)
	{
		// There is no token
		return FUNC8();
	}

	o = FUNC5(NULL);
	tmp = FUNC4(FUNC10(str) + 32);

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
			if (c == L' ' || c == L'\t')
			{
				// Advance to the next character
			}
			else
			{
				// Start of the token
				if (c == L'\"')
				{
					if (str[i + 1] == L'\"')
					{
						// Regarded "" as a single " character
						tmp[wp++] = L'\"';
						i++;
					}
					else
					{
						// Single "(double-quote) enables the flag to ignore space
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
			if (ignore_space == false && (c == L' ' || c == L'\t'))
			{
				// End of the token
				tmp[wp++] = 0;
				wp = 0;

				FUNC1(o, FUNC7(tmp));
				mode = 0;
			}
			else
			{
				if (c == L'\"')
				{
					if (str[i + 1] == L'\"')
					{
						// Regarded "" as a single " character
						tmp[wp++] = L'\"';
						i++;
					}
					else
					{
						if (ignore_space == false)
						{
							// Single "(double-quote) enables the flag to ignore space
							ignore_space = true;
						}
						else
						{
							// Disable the flag to ignore space
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
		FUNC1(o, FUNC7(tmp));
	}

	FUNC0(tmp);

	t = FUNC11(sizeof(UNI_TOKEN_LIST));
	t->NumTokens = FUNC3(o);
	t->Token = FUNC11(sizeof(wchar_t *) * t->NumTokens);
	for (i = 0;i < t->NumTokens;i++)
	{
		t->Token[i] = FUNC2(o, i);
	}

	FUNC6(o);

	return t;
}