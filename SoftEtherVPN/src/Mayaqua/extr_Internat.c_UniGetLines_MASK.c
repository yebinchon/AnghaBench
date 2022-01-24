#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wchar_t ;
typedef  int /*<<< orphan*/  UNI_TOKEN_LIST ;
typedef  size_t UINT ;
struct TYPE_6__ {scalar_t__ Buf; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 size_t FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int*,int) ; 

UNI_TOKEN_LIST *FUNC11(wchar_t *str)
{
	UINT i, len;
	BUF *b = NULL;
	LIST *o;
	UNI_TOKEN_LIST *ret;
	// Validate arguments
	if (str == NULL)
	{
		return FUNC8();
	}

	o = FUNC4(NULL);

	len = FUNC9(str);

	b = FUNC3();

	for (i = 0;i < len;i++)
	{
		wchar_t c = str[i];
		bool f = false;

		if (c == L'\r')
		{
			if (str[i + 1] == L'\n')
			{
				i++;
			}
			f = true;
		}
		else if (c == L'\n')
		{
			f = true;
		}

		if (f)
		{
			wchar_t zero = 0;
			wchar_t *s;
			FUNC10(b, &zero, sizeof(wchar_t));

			s = (wchar_t *)b->Buf;

			FUNC0(o, FUNC5(s));

			FUNC1(b);
		}
		else
		{
			FUNC10(b, &c, sizeof(wchar_t));
		}
	}

	if (true)
	{
		wchar_t zero = 0;
		wchar_t *s;
		FUNC10(b, &zero, sizeof(wchar_t));

		s = (wchar_t *)b->Buf;

		FUNC0(o, FUNC5(s));

		FUNC1(b);
	}

	FUNC2(b);

	ret = FUNC7(o);

	FUNC6(o);

	return ret;
}