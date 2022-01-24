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
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

UINT FUNC3(char *str)
{
#ifdef	OS_WIN32
	UINT ret;
	// Validate arguments
	if (str == NULL)
	{
		return 0;
	}

	ret = (UINT)mbstowcs(NULL, str, StrLen(str));
	if (ret == (UINT)-1)
	{
		return 0;
	}

	return (ret + 1) * sizeof(wchar_t);
#else	// OS_WIN32
	return FUNC1(str);
#endif	// OS_WIN32
}