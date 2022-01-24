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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

wchar_t *FUNC3(CONSOLE *c, void *param)
{
	char *s;
	// Validate arguments
	if (c == NULL)
	{
		return NULL;
	}

	s = FUNC0(c);

	if (s == NULL)
	{
		return NULL;
	}
	else
	{
		wchar_t *ret = FUNC1(s);

		FUNC2(s);

		return ret;
	}
}