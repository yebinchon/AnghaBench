#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
struct TYPE_8__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
struct TYPE_7__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

UINT64 FUNC7(char *str)
{
	UINT64 ret = 0;
	TOKEN_LIST *t;
	UINT a, b, c, d, e, f;
	// Validate arguments
	if (str == NULL)
	{
		return INFINITE;
	}

	if (FUNC1(str) || FUNC3(str, "none") == 0)
	{
		return 0;
	}

	t = FUNC2(str, ":/,. \"");
	if (t->NumTokens != 6)
	{
		FUNC0(t);
		return INFINITE;
	}

	a = FUNC5(t->Token[0]);
	b = FUNC5(t->Token[1]);
	c = FUNC5(t->Token[2]);
	d = FUNC5(t->Token[3]);
	e = FUNC5(t->Token[4]);
	f = FUNC5(t->Token[5]);

	ret = INFINITE;

	if (a >= 1000 && a <= 9999 && b >= 1 && b <= 12 && c >= 1 && c <= 31 &&
		d <= 23 && e <= 59 && f <= 59)
	{
		SYSTEMTIME t;

		FUNC6(&t, sizeof(t));
		t.wYear = a;
		t.wMonth = b;
		t.wDay = c;
		t.wHour = d;
		t.wMinute = e;
		t.wSecond = f;

		ret = FUNC4(&t);
	}

	FUNC0(t);

	return ret;
}