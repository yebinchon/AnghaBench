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
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp8 ;
typedef  int /*<<< orphan*/  tmp7 ;
typedef  int /*<<< orphan*/  tmp6 ;
typedef  int /*<<< orphan*/  tmp5 ;
typedef  int /*<<< orphan*/  tmp4 ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_17__ {scalar_t__ VLanId; int /*<<< orphan*/  PacketNum; int /*<<< orphan*/  PacketSize; scalar_t__ BridgeMode; scalar_t__ SecureNATMode; scalar_t__ LinkMode; int /*<<< orphan*/  MaxNumTcp; int /*<<< orphan*/  CurrentNumTcp; int /*<<< orphan*/  Username; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  RemoteHostname; scalar_t__ RemoteSession; int /*<<< orphan*/  Name; } ;
struct TYPE_16__ {scalar_t__ ServerType; scalar_t__ NumSession; TYPE_2__* Sessions; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SERVER_INFO ;
typedef  TYPE_2__ RPC_ENUM_SESSION_ITEM ;
typedef  TYPE_1__ RPC_ENUM_SESSION ;
typedef  TYPE_4__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_5__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  L3_USERNAME ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_5__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC21 (int) ; 
 int /*<<< orphan*/ * FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,int /*<<< orphan*/ *) ; 

UINT FUNC24(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_SESSION t;
	UINT server_type = 0;

	o = FUNC9(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC22("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	{
		// Get the server type
		RPC_SERVER_INFO t;

		FUNC20(&t, sizeof(t));

		if (FUNC11(ps->Rpc, &t) == ERR_NO_ERROR)
		{
			server_type = t.ServerType;

			FUNC8(&t);
		}
	}

	FUNC20(&t, sizeof(t));
	FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC6(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC4();
		UINT i;

		FUNC3(ct, FUNC22("SM_SESS_COLUMN_1"), false);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_8"), false);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_2"), false);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_3"), false);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_4"), false);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_5"), true);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_6"), true);
		FUNC3(ct, FUNC22("SM_SESS_COLUMN_7"), true);

		for (i = 0;i < t.NumSession;i++)
		{
			RPC_ENUM_SESSION_ITEM *e = &t.Sessions[i];
			wchar_t tmp1[MAX_SIZE];
			wchar_t *tmp2;
			wchar_t tmp3[MAX_SIZE];
			wchar_t tmp4[MAX_SIZE];
			wchar_t tmp5[MAX_SIZE];
			wchar_t tmp6[MAX_SIZE];
			wchar_t tmp7[MAX_SIZE];
			wchar_t tmp8[MAX_SIZE];
			bool free_tmp2 = false;

			FUNC15(tmp1, sizeof(tmp1), e->Name);

			tmp2 = FUNC22("SM_SESS_NORMAL");
			if (server_type != SERVER_TYPE_STANDALONE)
			{
				if (e->RemoteSession)
				{
					tmp2 = FUNC21(MAX_SIZE);
					FUNC16(tmp2, MAX_SIZE, FUNC22("SM_SESS_REMOTE"), e->RemoteHostname);
					free_tmp2 = true;
				}
				else
				{
					if (FUNC14(e->RemoteHostname) == 0)
					{
						tmp2 = FUNC22("SM_SESS_LOCAL");
					}
					else
					{
						tmp2 = FUNC21(MAX_SIZE);
						FUNC16(tmp2, MAX_SIZE, FUNC22("SM_SESS_LOCAL_2"), e->RemoteHostname);
						free_tmp2 = true;
					}
				}
			}
			if (e->LinkMode)
			{
				if (free_tmp2)
				{
					FUNC5(tmp2);
					free_tmp2 = false;
				}
				tmp2 = FUNC22("SM_SESS_LINK");
			}
			else if (e->SecureNATMode)
			{
				/*if (free_tmp2)
				{
					Free(tmp2);
					free_tmp2 = false;
				}*/
				tmp2 = FUNC22("SM_SESS_SNAT");
			}

			FUNC15(tmp3, sizeof(tmp3), e->Username);

			FUNC15(tmp4, sizeof(tmp4), e->Hostname);
			if (e->LinkMode)
			{
				FUNC17(tmp4, sizeof(tmp4), FUNC22("SM_SESS_LINK_HOSTNAME"));
			}
			else if (e->SecureNATMode)
			{
				FUNC17(tmp4, sizeof(tmp4), FUNC22("SM_SESS_SNAT_HOSTNAME"));
			}
			else if (e->BridgeMode)
			{
				FUNC17(tmp4, sizeof(tmp4), FUNC22("SM_SESS_BRIDGE_HOSTNAME"));
			}
			else if (FUNC12(e->Username, L3_USERNAME))
			{
				FUNC17(tmp4, sizeof(tmp4), FUNC22("SM_SESS_LAYER3_HOSTNAME"));
			}

			FUNC16(tmp5, sizeof(tmp5), L"%u / %u", e->CurrentNumTcp, e->MaxNumTcp);
			if (e->LinkMode)
			{
				FUNC17(tmp5, sizeof(tmp5), FUNC22("SM_SESS_LINK_TCP"));
			}
			else if (e->SecureNATMode)
			{
				FUNC17(tmp5, sizeof(tmp5), FUNC22("SM_SESS_SNAT_TCP"));
			}
			else if (e->BridgeMode)
			{
				FUNC17(tmp5, sizeof(tmp5), FUNC22("SM_SESS_BRIDGE_TCP"));
			}

			FUNC18(tmp6, sizeof(tmp6), e->PacketSize);
			FUNC18(tmp7, sizeof(tmp7), e->PacketNum);

			if (e->VLanId == 0)
			{
				FUNC17(tmp8, sizeof(tmp8), FUNC22("CM_ST_NO_VLAN"));
			}
			else
			{
				FUNC19(tmp8, e->VLanId);
			}

			FUNC2(ct, tmp1, tmp8, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7);

			if (free_tmp2)
			{
				FUNC5(tmp2);
			}
		}


		FUNC1(ct, c, true);
	}

	FUNC7(&t);

	FUNC6(o);

	return 0;
}