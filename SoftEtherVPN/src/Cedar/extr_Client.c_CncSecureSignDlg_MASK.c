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
typedef  int /*<<< orphan*/  SECURE_SIGN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

bool FUNC13(SECURE_SIGN *sign)
{
	SOCK *s;
	PACK *p;
	bool ret = false;
	// Validate arguments
	if (sign == NULL)
	{
		return false;
	}

	s = FUNC0();
	if (s == NULL)
	{
		return false;
	}

	p = FUNC5();
	FUNC7(p, "function", "secure_sign");
	FUNC6(p, sign);

	FUNC11(s, p);
	FUNC2(p);

	p = FUNC9(s);
	if (p != NULL)
	{
		ret = FUNC8(p, "ret");

		if (ret)
		{
			FUNC3(sign);

			FUNC12(sign, sizeof(SECURE_SIGN));
			FUNC4(sign, p);
		}

		FUNC2(p);
	}

	FUNC1(s);
	FUNC10(s);

	return ret;
}