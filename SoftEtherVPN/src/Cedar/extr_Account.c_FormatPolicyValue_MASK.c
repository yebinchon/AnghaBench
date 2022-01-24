#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int TypeInt; char* FormatStr; scalar_t__ AllowZero; } ;
typedef  TYPE_1__ POLICY_ITEM ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*) ; 

void FUNC4(wchar_t *str, UINT size, UINT id, UINT value)
{
	POLICY_ITEM *p;
	// Validate arguments
	if (str == NULL)
	{
		return;
	}

	p = FUNC0(id);

	if (p->TypeInt == false)
	{
		// bool type
		if (value == 0)
		{
			FUNC2(str, size, L"No");
		}
		else
		{
			FUNC2(str, size, L"Yes");
		}
	}
	else
	{
		// int type
		if (value == 0 && p->AllowZero)
		{
			FUNC2(str, size, FUNC3("CMD_NO_SETTINGS"));
		}
		else
		{
			FUNC1(str, size, FUNC3(p->FormatStr), value);
		}
	}
}