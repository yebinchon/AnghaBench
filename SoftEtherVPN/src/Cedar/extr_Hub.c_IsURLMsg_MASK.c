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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {size_t NumTokens; int /*<<< orphan*/ ** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  size_t UINT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(wchar_t *str, char *url, UINT url_size)
{
	UNI_TOKEN_LIST *t;
	bool ret = false;
	UINT i;
	UINT n = 0;
	// Validate arguments
	if (str == NULL)
	{
		return false;
	}

	t = FUNC2(str, L"\r\n");

	for (i = 0;i < t->NumTokens;i++)
	{
		wchar_t *str = t->Token[i];

		if (FUNC0(str) == false)
		{
			n++;

			FUNC5(str);

			if (n == 1)
			{
				if (FUNC3(str, L"http://") ||
					FUNC3(str, L"https://") ||
					FUNC3(str, L"ftp://"))
				{
					ret = true;

					FUNC4(url, url_size, str);
				}
			}
		}
	}

	if (n != 1)
	{
		ret = false;
	}

	FUNC1(t);

	return ret;
}