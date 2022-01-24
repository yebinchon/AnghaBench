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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_8__ {scalar_t__ NumFarm; TYPE_1__* Farms; } ;
struct TYPE_7__ {scalar_t__ Controller; int /*<<< orphan*/  Id; int /*<<< orphan*/  AssignedBridgeLicense; int /*<<< orphan*/  AssignedClientLicense; int /*<<< orphan*/  NumHubs; int /*<<< orphan*/  NumTcpConnections; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  Point; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; } ;
typedef  TYPE_1__ RPC_ENUM_FARM_ITEM ;
typedef  TYPE_2__ RPC_ENUM_FARM ;
typedef  TYPE_3__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_FARM t;
	CT *ct;
	UINT i;

	o = FUNC8(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&t, sizeof(t));

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

	FUNC3(ct, FUNC14("CMD_ID"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_1"), false);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_2"), false);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_3"), false);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_4"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_5"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_6"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_7"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_8"), true);
	FUNC3(ct, FUNC14("SM_FM_COLUMN_9"), true);

	for (i = 0;i < t.NumFarm;i++)
	{
		RPC_ENUM_FARM_ITEM *e = &t.Farms[i];
		wchar_t tmp0[64];
		wchar_t tmp1[MAX_SIZE];
		wchar_t tmp2[MAX_SIZE];
		wchar_t tmp3[64];
		wchar_t tmp4[64];
		wchar_t tmp5[64];
		wchar_t tmp6[64];
		wchar_t tmp7[64];
		wchar_t tmp8[64];

		FUNC7(tmp1, sizeof(tmp1), FUNC11(e->ConnectedTime), NULL);
		FUNC10(tmp2, sizeof(tmp2), e->Hostname);
		FUNC12(tmp3, e->Point);
		FUNC12(tmp4, e->NumSessions);
		FUNC12(tmp5, e->NumTcpConnections);
		FUNC12(tmp6, e->NumHubs);
		FUNC12(tmp7, e->AssignedClientLicense);
		FUNC12(tmp8, e->AssignedBridgeLicense);

		FUNC12(tmp0, e->Id);

		FUNC2(ct, tmp0,
			e->Controller ? FUNC14("SM_FM_CONTROLLER") : FUNC14("SM_FM_MEMBER"),
			tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8);
	}

	FUNC1(ct, c);

	FUNC6(&t);

	FUNC5(o);

	return 0;
}