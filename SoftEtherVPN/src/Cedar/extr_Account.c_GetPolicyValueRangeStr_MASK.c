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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int TypeInt; char* FormatStr; int /*<<< orphan*/  MaxValue; int /*<<< orphan*/  MinValue; scalar_t__ AllowZero; } ;
typedef  TYPE_1__ POLICY_ITEM ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

void FUNC4(wchar_t *str, UINT size, UINT id)
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
		FUNC2(str, size, FUNC3("CMD_PolicyList_Range_Bool"));
	}
	else
	{
		wchar_t *tag;
		wchar_t tmp1[256], tmp2[256];

		// int type
		if (p->AllowZero)
		{
			tag = FUNC3("CMD_PolicyList_Range_Int_2");
		}
		else
		{
			tag = FUNC3("CMD_PolicyList_Range_Int_1");
		}

		FUNC1(tmp1, sizeof(tmp1), FUNC3(p->FormatStr), &p->MinValue);
		FUNC1(tmp2, sizeof(tmp2), FUNC3(p->FormatStr), &p->MaxValue);

		FUNC1(str, size, tag, tmp1, tmp2);
	}
}