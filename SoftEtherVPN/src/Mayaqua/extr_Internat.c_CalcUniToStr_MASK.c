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
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UINT FUNC3(wchar_t *s)
{
#ifdef	OS_WIN32
	UINT ret;
	// Validate arguments
	if (s == NULL)
	{
		return 0;
	}

	ret = (UINT)wcstombs(NULL, s, UniStrLen(s));
	if (ret == (UINT)-1)
	{
		return 0;
	}

	return ret + 1;
#else	// OS_WIN32
	return FUNC1(s);
#endif	// OS_WIN32
}