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
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC9(char *arg)
{
	SOCK *s = FUNC0();
	PACK *p;
	bool ret;
	if (s == NULL)
	{
		return false;
	}

	p = FUNC3();
	FUNC4(p, "function", "exec_driver_installer");
	FUNC4(p, "arg", arg);

	FUNC8(s, p);
	FUNC2(p);

	p = FUNC6(s);
	if (p == NULL)
	{
		FUNC1(s);
		FUNC7(s);
		return false;
	}

	ret = FUNC5(p, "ret");

	FUNC2(p);

	FUNC1(s);
	FUNC7(s);

	return ret;
}