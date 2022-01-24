#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  s9 ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  s7 ;
typedef  int /*<<< orphan*/  s10 ;
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_14__ {scalar_t__ NumHub; TYPE_4__* Hubs; } ;
struct TYPE_11__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_10__ {scalar_t__ UnicastCount; scalar_t__ BroadcastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastBytes; } ;
struct TYPE_12__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
struct TYPE_13__ {scalar_t__ LastLoginTime; scalar_t__ LastCommTime; int IsTrafficFilled; int /*<<< orphan*/  HubType; scalar_t__ Online; int /*<<< orphan*/  HubName; TYPE_3__ Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumSessions; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; } ;
typedef  TYPE_4__ RPC_ENUM_HUB_ITEM ;
typedef  TYPE_5__ RPC_ENUM_HUB ;
typedef  TYPE_6__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_HUB t;
	UINT i;

	o = FUNC9(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

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

		FUNC3(ct, FUNC17("SM_HUB_COLUMN_1"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_2"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_3"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_4"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_5"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_6"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_7"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_8"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_9"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_10"), false);
		FUNC3(ct, FUNC17("SM_HUB_COLUMN_11"), false);
		FUNC3(ct, FUNC17("SM_SESS_COLUMN_6"), false);
		FUNC3(ct, FUNC17("SM_SESS_COLUMN_7"), false);

		for (i = 0;i < t.NumHub;i++)
		{
			RPC_ENUM_HUB_ITEM *e = &t.Hubs[i];
			wchar_t name[MAX_HUBNAME_LEN + 1];
			wchar_t s1[64], s2[64], s3[64], s4[64], s5[64];
			wchar_t s6[64], s7[128], s8[128];
			wchar_t s9[64], s10[64];

			FUNC15(s1, e->NumUsers);
			FUNC15(s2, e->NumGroups);
			FUNC15(s3, e->NumSessions);
			FUNC15(s4, e->NumMacTables);
			FUNC15(s5, e->NumIpTables);

			FUNC15(s6, e->NumLogin);

			if (e->LastLoginTime != 0)
			{
				FUNC7(s7, sizeof(s7), FUNC12(e->LastLoginTime));
			}
			else
			{
				FUNC13(s7, sizeof(s7), FUNC17("COMMON_UNKNOWN"));
			}

			if (e->LastCommTime != 0)
			{
				FUNC7(s8, sizeof(s8), FUNC12(e->LastCommTime));
			}
			else
			{
				FUNC13(s8, sizeof(s8), FUNC17("COMMON_UNKNOWN"));
			}

			if (e->IsTrafficFilled == false)
			{
				FUNC13(s9, sizeof(s9), FUNC17("CM_ST_NONE"));
				FUNC13(s10, sizeof(s10), FUNC17("CM_ST_NONE"));
			}
			else
			{
				FUNC14(s9, sizeof(s9),
					e->Traffic.Recv.BroadcastBytes + e->Traffic.Recv.UnicastBytes +
					e->Traffic.Send.BroadcastBytes + e->Traffic.Send.UnicastBytes);

				FUNC14(s10, sizeof(s10),
					e->Traffic.Recv.BroadcastCount + e->Traffic.Recv.UnicastCount +
					e->Traffic.Send.BroadcastCount + e->Traffic.Send.UnicastCount);
			}

			FUNC11(name, sizeof(name), e->HubName);

			FUNC2(ct,
				name,
				e->Online ? FUNC17("SM_HUB_ONLINE") : FUNC17("SM_HUB_OFFLINE"),
				FUNC8(e->HubType),
				s1, s2, s3, s4, s5, s6, s7, s8, s9, s10);
		}

		FUNC1(ct, c, true);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}