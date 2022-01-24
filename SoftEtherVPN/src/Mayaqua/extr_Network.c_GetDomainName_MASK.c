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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 

bool FUNC5(char *name, UINT size)
{
	bool ret = false;
	IP ip;
	// Validate arguments
	FUNC0(name, size);
	if (name == NULL)
	{
		return false;
	}

#ifdef	OS_WIN32
	ClearStr(name, size);
	ret = Win32GetDefaultDns(&ip, name, size);

	if (ret == false || IsEmptyStr(name))
	{
		ret = Win32GetDnsSuffix(name, size);
	}
#else	// OS_WIN32
	ret = FUNC2(name, size);
#endif	// OS_WIN32

	if (ret == false)
	{
		return false;
	}

	return (FUNC1(name) ? false : true);
}