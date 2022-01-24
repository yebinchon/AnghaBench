#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  pack_name ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_13__ {TYPE_1__** values; } ;
struct TYPE_12__ {int TypeInt; int AllowZero; scalar_t__ MinValue; scalar_t__ MaxValue; } ;
struct TYPE_11__ {int IntValue; } ;
typedef  TYPE_2__ POLICY_ITEM ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ ELEMENT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  VALUE_INT ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ *) ; 

bool FUNC19(CONSOLE *c, POLICY *pol, char *name, char *value, bool cascade_mode)
{
	PACK *p;
	ELEMENT *e;
	POLICY_ITEM *item;
	UINT id;
	wchar_t tmp[MAX_SIZE];
	wchar_t tmp2[MAX_SIZE];
	char pack_name[128];
	// Validate arguments
	if (c == NULL || pol == NULL || name == NULL || value == NULL)
	{
		return false;
	}

	p = FUNC6();

	FUNC7(p, pol);

	FUNC0(pack_name, sizeof(pack_name), "policy:%s", FUNC8(FUNC10(name)));

	if ((e = FUNC2(p, pack_name, VALUE_INT)) == NULL || (id = FUNC10(name)) == INFINITE)
	{
		FUNC13(tmp, sizeof(tmp), FUNC15("CMD_CascadePolicySet_Invalid_Name"), name);
		c->Write(c, tmp);
		FUNC1(p);
		return false;
	}

	if (cascade_mode && (FUNC9(id) == false))
	{
		FUNC13(tmp, sizeof(tmp), FUNC15("CMD_CascadePolicySet_Invalid_Name_For_Cascade"), name);
		c->Write(c, tmp);
		FUNC1(p);
		return false;
	}

	item = FUNC3(id);

	if (item->TypeInt == false)
	{
		// bool type
		e->values[0]->IntValue = (
			FUNC11(value, "y") || FUNC11(value, "t") ||
			FUNC12(value) != 0) ? 1 : 0;
	}
	else
	{
		UINT n = FUNC12(value);
		bool b = true;

		// int type
		FUNC4(tmp, sizeof(tmp), id);

		if (item->AllowZero == false)
		{
			if (n == 0)
			{
				b = false;
			}
		}

		if (n != 0 && (n < item->MinValue || n > item->MaxValue))
		{
			b = false;
		}

		if (b == false)
		{
			FUNC13(tmp2, sizeof(tmp2), FUNC15("CMD_CascadePolicySet_Invalid_Range"), FUNC8(id), tmp);
			c->Write(c, tmp2);
			FUNC1(p);
			return false;
		}

		e->values[0]->IntValue = n;
	}

	FUNC14(pol, sizeof(POLICY));

	FUNC5(pol, p);

	FUNC1(p);

	return true;
}