#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(char *fmt, va_list args)
{
	wchar_t *ret;
	wchar_t *fmt_wchar;
	char *tmp;
	// Validate arguments
	if (fmt == NULL)
	{
		return;
	}

	fmt_wchar = FUNC0(fmt);
	ret = FUNC3(fmt_wchar, args, true);

	tmp = FUNC1(ret);
	FUNC4(tmp);
	FUNC2(tmp);

	FUNC2(ret);
	FUNC2(fmt_wchar);
}