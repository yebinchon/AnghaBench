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
struct TYPE_4__ {int NumTokens; int** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 TYPE_1__* FUNC9 () ; 
 int FUNC10 (int*) ; 
 int FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 void* FUNC13 (int) ; 

UNI_TOKEN_LIST *FUNC14(wchar_t *str, UINT width)
{
	UINT wp;
	wchar_t *tmp;
	UINT len, i;
	LIST *o;
	UNI_TOKEN_LIST *ret;
	// Validate arguments
	if (str == NULL)
	{
		return FUNC9();
	}
	if (width == 0)
	{
		width = 1;
	}

	o = FUNC6(NULL);

	len = FUNC10(str);
	tmp = FUNC13(sizeof(wchar_t) * (len + 32));
	wp = 0;

	for (i = 0;i < (len + 1);i++)
	{
		wchar_t c = str[i];
		UINT next_word_width;
		UINT remain_width;

		switch (c)
		{
		case 0:
		case L'\r':
		case L'\n':
			if (c == L'\r')
			{
				if (str[i + 1] == L'\n')
				{
					i++;
				}
			}

			tmp[wp++] = 0;
			wp = 0;

			FUNC3(o, FUNC8(tmp));
			break;

		default:
			next_word_width = FUNC2(&str[i]);
			remain_width = (width - FUNC11(tmp));

			if ((remain_width >= 1) && (next_word_width > remain_width) && (next_word_width <= width))
			{
				tmp[wp++] = 0;
				wp = 0;

				FUNC3(o, FUNC8(tmp));
			}

			tmp[wp++] = c;
			tmp[wp] = 0;
			if (FUNC11(tmp) >= width)
			{
				tmp[wp++] = 0;
				wp = 0;

				FUNC3(o, FUNC8(tmp));
			}
			break;
		}
	}

	if (FUNC5(o) == 0)
	{
		FUNC3(o, FUNC0(L""));
	}

	ret = FUNC13(sizeof(UNI_TOKEN_LIST));
	ret->NumTokens = FUNC5(o);
	ret->Token = FUNC13(sizeof(wchar_t *) * ret->NumTokens);

	for (i = 0;i < FUNC5(o);i++)
	{
		wchar_t *s = FUNC4(o, i);

		FUNC12(s);

		ret->Token[i] = s;
	}

	FUNC7(o);
	FUNC1(tmp);

	return ret;
}