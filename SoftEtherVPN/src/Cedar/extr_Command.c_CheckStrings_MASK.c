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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_4__ {int NumTokens; int /*<<< orphan*/ ** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int UINT ;

/* Variables and functions */
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 

bool FUNC9()
{
	wchar_t *numstr = FUNC8("CHECK_TEST_123456789");
	char tmp[MAX_SIZE];
	wchar_t tmp2[MAX_SIZE];
	UINT i;
	UINT sum, sum2;
	UNI_TOKEN_LIST *t;

	FUNC5(tmp2, sizeof(tmp2), L"");

	sum2 = 0;
	for (i = 0;i < 64;i++)
	{
		sum2 += i;
		FUNC2(tmp2, sizeof(tmp2), L"%s,%u", tmp2, i);
	}

	t = FUNC4(tmp2, L",");

	sum = 0;

	for (i = 0;i < t->NumTokens;i++)
	{
		wchar_t *s = t->Token[i];
		UINT n = FUNC6(s);

		sum += n;
	}

	FUNC3(t);

	if (sum != sum2)
	{
		FUNC0("UniParseToken Failed.\n");
		return false;
	}

	if (FUNC6(numstr) != 123456789)
	{
		FUNC0("UniToInt Failed.\n");
		return false;
	}

	FUNC7(tmp, sizeof(tmp), numstr);
	if (FUNC1(tmp) != 123456789)
	{
		FUNC0("UniToStr Failed.\n");
		return false;
	}

	return true;
}