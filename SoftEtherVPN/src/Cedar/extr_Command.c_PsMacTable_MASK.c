#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp6 ;
typedef  int /*<<< orphan*/  tmp5 ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_16__ {scalar_t__ NumMacTable; TYPE_1__* MacTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_15__ {char* SessionName; scalar_t__ Key; scalar_t__ VlanId; int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  MacAddress; } ;
typedef  TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_5__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC24(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_MAC_TABLE t;
	UINT i;

	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[session_name]", NULL, NULL, NULL, NULL,}
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC22("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC11(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC21(&t, sizeof(t));
	FUNC14(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC12(ps->Rpc, &t);

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
		char *session_name = FUNC8(o, "[session_name]");

		if (FUNC9(session_name))
		{
			session_name = NULL;
		}

		FUNC3(ct, FUNC22("CMD_ID"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_1"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_1A"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_2"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_3"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_4"), false);
		FUNC3(ct, FUNC22("SM_MAC_COLUMN_5"), false);

		for (i = 0;i < t.NumMacTable;i++)
		{
			char str[MAX_SIZE];
			wchar_t tmp0[128];
			wchar_t tmp1[MAX_SIZE];
			wchar_t tmp2[MAX_SIZE];
			wchar_t tmp3[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];
			wchar_t tmp5[MAX_SIZE];
			wchar_t tmp6[MAX_SIZE];

			RPC_ENUM_MAC_TABLE_ITEM *e = &t.MacTables[i];

			if (session_name == NULL || FUNC13(e->SessionName, session_name) == 0)
			{
				FUNC20(tmp0, e->Key);

				FUNC16(tmp1, sizeof(tmp1), e->SessionName);

				FUNC10(str, sizeof(str), e->MacAddress);
				FUNC16(tmp2, sizeof(tmp2), str);

				FUNC7(tmp3, sizeof(tmp3), FUNC17(e->CreatedTime));

				FUNC7(tmp4, sizeof(tmp4), FUNC17(e->UpdatedTime));

				if (FUNC15(e->RemoteHostname) == 0)
				{
					FUNC19(tmp5, sizeof(tmp5), FUNC22("SM_MACIP_LOCAL"));
				}
				else
				{
					FUNC18(tmp5, sizeof(tmp5), FUNC22("SM_MACIP_SERVER"), e->RemoteHostname);
				}

				FUNC20(tmp6, e->VlanId);
				if (e->VlanId == 0)
				{
					FUNC19(tmp6, sizeof(tmp6), FUNC22("CM_ST_NONE"));
				}

				FUNC2(ct,
					tmp0, tmp1, tmp6, tmp2, tmp3, tmp4, tmp5);
			}
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}