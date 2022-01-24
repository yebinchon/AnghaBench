#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int /*<<< orphan*/  Priority; scalar_t__ Deny; int /*<<< orphan*/  Id; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_16__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_15__ {int /*<<< orphan*/  o; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_AC_LIST ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_3__ CONSOLE ;
typedef  TYPE_4__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_AC_LIST t;

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC11(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC12(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC6(o);
		return ret;
	}
	else
	{
		UINT i;
		CT *ct;

		ct = FUNC4();
		FUNC3(ct, FUNC17("SM_AC_COLUMN_1"), true);
		FUNC3(ct, FUNC17("SM_AC_COLUMN_2"), true);
		FUNC3(ct, FUNC17("SM_AC_COLUMN_3"), false);
		FUNC3(ct, FUNC17("SM_AC_COLUMN_4"), false);

		for (i = 0;i < FUNC10(t.o);i++)
		{
			wchar_t tmp1[32], *tmp2, tmp3[MAX_SIZE], tmp4[32];
			char *tmp_str;
			AC *ac = FUNC9(t.o, i);

			FUNC15(tmp1, ac->Id);
			tmp2 = ac->Deny ? FUNC17("SM_AC_DENY") : FUNC17("SM_AC_PASS");
			tmp_str = FUNC8(ac);
			FUNC14(tmp3, sizeof(tmp3), tmp_str);

			FUNC5(tmp_str);

			FUNC15(tmp4, ac->Priority);

			FUNC2(ct, tmp1, tmp4, tmp2, tmp3);
		}

		FUNC1(ct, c);
	}

	FUNC7(&t);

	FUNC6(o);

	return 0;
}