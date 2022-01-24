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
typedef  int /*<<< orphan*/  value_str ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16(CONSOLE *c, POLICY *pol, bool cascade_mode)
{
	UINT i;
	CT *ct;
	PACK *p;
	// Validate arguments
	if (c == NULL || pol == NULL)
	{
		return;
	}

	ct = FUNC4();
	FUNC3(ct, FUNC15("CMD_PolicyList_Column_1"), false);
	FUNC3(ct, FUNC15("CMD_PolicyList_Column_2"), false);
	FUNC3(ct, FUNC15("CMD_PolicyList_Column_3"), false);

	p = FUNC9();
	FUNC10(p, pol);

	// Show the list of all policies
	for (i = 0; i < FUNC14();i++)
	{
		char name[64];
		wchar_t *tmp;

		if (cascade_mode == false || FUNC13(i))
		{
			wchar_t value_str[256];
			UINT value;
			char tmp2[256];

			FUNC5(tmp2, sizeof(tmp2), "policy:%s", FUNC12(i));
			value = FUNC11(p, tmp2);

			tmp = FUNC0(FUNC12(i));

			FUNC6(value_str, sizeof(value_str),
				i, value);

			FUNC5(name, sizeof(name), "POL_%u", i);
			FUNC2(ct, tmp, FUNC15(name), value_str);

			FUNC7(tmp);
		}
	}

	FUNC8(p);

	FUNC1(ct, c);
}