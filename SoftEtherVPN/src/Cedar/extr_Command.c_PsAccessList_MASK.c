#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {scalar_t__ Priority; scalar_t__ UniqueId; scalar_t__ Id; int /*<<< orphan*/  Note; scalar_t__ Active; scalar_t__ Discard; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {scalar_t__ NumAccess; TYPE_4__* Accesses; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_3__ CONSOLE ;
typedef  TYPE_4__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,TYPE_4__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_ACCESS_LIST t;
	CT *ct;
	UINT i;
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC15("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC14(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC9(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}

	ct = FUNC4();
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_0"), true);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_1"), true);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_2"), true);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_3"), true);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_6"), true);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_5"), false);
	FUNC3(ct, FUNC15("SM_ACCESS_COLUMN_4"), false);

	for (i = 0;i < t.NumAccess;i++)
	{
		ACCESS *a = &t.Accesses[i];
		char tmp[MAX_SIZE];
		wchar_t tmp3[MAX_SIZE];
		wchar_t tmp1[MAX_SIZE];
		wchar_t tmp2[MAX_SIZE];
		wchar_t tmp4[MAX_SIZE];

		FUNC7(tmp, sizeof(tmp), a);
		FUNC13(tmp1, a->Priority);
		FUNC11(tmp2, sizeof(tmp2), tmp);
		FUNC13(tmp4, a->UniqueId);
		if (a->UniqueId == 0)
		{
			FUNC12(tmp4, sizeof(tmp4), FUNC15("SEC_NONE"));
		}

		FUNC13(tmp3, a->Id);

		FUNC2(ct,
			tmp3,
			a->Discard ? FUNC15("SM_ACCESS_DISCARD") : FUNC15("SM_ACCESS_PASS"),
			a->Active ? FUNC15("SM_ACCESS_ENABLE") : FUNC15("SM_ACCESS_DISABLE"),
			tmp1,
			tmp4,
			tmp2,
			a->Note);
	}

	FUNC1(ct, c, true);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}