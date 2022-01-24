#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_8__ {scalar_t__ NumItem; TYPE_1__* Items; } ;
struct TYPE_7__ {int Active; int Online; int /*<<< orphan*/  NumTables; int /*<<< orphan*/  NumInterfaces; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_L3SW_ITEM ;
typedef  TYPE_2__ RPC_ENUM_L3SW ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_L3SW t;

	o = FUNC7(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC11(&t, sizeof(t));

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC4();
		UINT i;

		FUNC3(ct, FUNC12("SM_L3_SW_COLUMN1"), false);
		FUNC3(ct, FUNC12("SM_L3_SW_COLUMN2"), false);
		FUNC3(ct, FUNC12("SM_L3_SW_COLUMN3"), true);
		FUNC3(ct, FUNC12("SM_L3_SW_COLUMN4"), true);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_ENUM_L3SW_ITEM *e = &t.Items[i];
			wchar_t tmp1[MAX_SIZE], *tmp2, tmp3[64], tmp4[64];

			FUNC9(tmp1, sizeof(tmp1), e->Name);
			if (e->Active == false)
			{
				tmp2 = FUNC12("SM_L3_SW_ST_F_F");
			}
			else if (e->Online == false)
			{
				tmp2 = FUNC12("SM_L3_SW_ST_T_F");
			}
			else
			{
				tmp2 = FUNC12("SM_L3_SW_ST_T_T");
			}
			FUNC10(tmp3, e->NumInterfaces);
			FUNC10(tmp4, e->NumTables);

			FUNC2(ct,
				tmp1, tmp2, tmp3, tmp4);
		}

		FUNC1(ct, c);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}