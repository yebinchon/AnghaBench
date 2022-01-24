#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ Param; } ;
struct TYPE_4__ {int /*<<< orphan*/ * InBuf; } ;
typedef  TYPE_1__ LOCAL_CONSOLE_PARAM ;
typedef  TYPE_2__ CONSOLE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 

wchar_t *FUNC8(CONSOLE *c)
{
	LOCAL_CONSOLE_PARAM *p;
	char *str;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	p = (LOCAL_CONSOLE_PARAM *)c->Param;

	if (p->InBuf == NULL)
	{
		return NULL;
	}

	while (true)
	{
		str = FUNC1(p->InBuf);

		if (str == NULL)
		{
			return NULL;
		}

		FUNC5(str);

		if (FUNC3(str) == false)
		{
			UINT size;
			wchar_t *ret;

			size = FUNC0((BYTE *)str, FUNC4(str));
			ret = FUNC7(size + 32);
			FUNC6(ret, size, (BYTE *)str, FUNC4(str));

			FUNC2(str);

			return ret;
		}

		FUNC2(str);
	}
}