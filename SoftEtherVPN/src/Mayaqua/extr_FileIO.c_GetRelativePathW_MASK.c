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
typedef  int /*<<< orphan*/  fullpath2 ;
typedef  int /*<<< orphan*/  basepath2 ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(wchar_t *dst, UINT size, wchar_t *fullpath, wchar_t *basepath)
{
	wchar_t fullpath2[MAX_SIZE];
	wchar_t basepath2[MAX_SIZE];
	// Validate arguments
	if (dst == NULL || fullpath == NULL || basepath == NULL)
	{
		return false;
	}
	FUNC0(dst, size);

	FUNC1(fullpath2, sizeof(fullpath2), fullpath);
	FUNC1(basepath2, sizeof(basepath2), basepath);

#ifdef	OS_WIN32
	UniStrCat(basepath2, sizeof(basepath2), L"\\");
#else	// OS_WIN32
	FUNC3(basepath2, sizeof(basepath2), L"/");
#endif	// OS_WIN32

	if (FUNC5(fullpath2) <= FUNC5(basepath2))
	{
		return false;
	}

	if (FUNC2(fullpath2, basepath2) == false)
	{
		return false;
	}

	FUNC4(dst, size, fullpath2 + FUNC5(basepath2));

	return true;
}