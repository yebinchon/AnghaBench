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
typedef  int /*<<< orphan*/  sign ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  SECURE_SIGN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

void FUNC9(SOCK *s, PACK *p)
{
	SECURE_SIGN sign;
	bool ret = false;
	// Validate arguments
	if (s == NULL || p == NULL)
	{
		return;
	}

	FUNC8(&sign, sizeof(sign));
	FUNC2(&sign, p);

#ifdef	OS_WIN32
	// Win32: Show dialog
	ret = Win32CiSecureSign(&sign);
#else	// OS_WIN32
	// UNIX: not implemented
	ret = false;
#endif	// OS_WIN32

	p = FUNC3();

	FUNC4(p, &sign);
	FUNC1(&sign);

	FUNC5(p, "ret", ret);

	FUNC6(s, p);
	FUNC0(p);
}