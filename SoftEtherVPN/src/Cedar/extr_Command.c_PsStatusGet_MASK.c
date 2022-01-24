#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_11__ {scalar_t__ HubType; scalar_t__ LastLoginTime; scalar_t__ LastCommTime; scalar_t__ CreatedTime; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  NumIpTables; int /*<<< orphan*/  NumMacTables; int /*<<< orphan*/  NumGroups; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  NumAccessLists; int /*<<< orphan*/  NumSessionsBridge; int /*<<< orphan*/  NumSessionsClient; int /*<<< orphan*/  NumSessions; scalar_t__ SecureNATEnabled; scalar_t__ Online; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_HUB_STATUS ;
typedef  TYPE_2__ PS ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC19(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_HUB_STATUS t;

	o = FUNC10(c, cmd_name, str, NULL, 0);
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));

	FUNC12(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC11(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC1(c, ret);
		FUNC7(o);
		return ret;
	}
	else
	{
		CT *ct = FUNC5();
		wchar_t *s;
		wchar_t tmp[MAX_SIZE];

		// HUB name
		s = FUNC2(t.HubName);
		FUNC4(ct, FUNC17("SM_HUB_STATUS_HUBNAME"), s);
		FUNC6(s);

		// Online
		FUNC4(ct, FUNC17("SM_HUB_STATUS_ONLINE"),
			t.Online ? FUNC17("SM_HUB_ONLINE") : FUNC17("SM_HUB_OFFLINE"));

		// Type of HUB
		FUNC4(ct, FUNC17("SM_HUB_TYPE"),
			FUNC9(t.HubType));

		if (t.HubType == HUB_TYPE_STANDALONE)
		{
			// Enable / Disable the SecureNAT
			FUNC4(ct, FUNC17("SM_HUB_SECURE_NAT"),
				t.SecureNATEnabled ? FUNC17("SM_HUB_SECURE_NAT_YES") : FUNC17("SM_HUB_SECURE_NAT_NO"));
		}

		// Other values
		FUNC15(tmp, t.NumSessions);
		FUNC4(ct, FUNC17("SM_HUB_NUM_SESSIONS"), tmp);

		if (t.NumSessionsClient != 0 || t.NumSessionsBridge != 0)
		{
			FUNC15(tmp, t.NumSessionsClient);
			FUNC4(ct, FUNC17("SM_HUB_NUM_SESSIONS_CLIENT"), tmp);
			FUNC15(tmp, t.NumSessionsBridge);
			FUNC4(ct, FUNC17("SM_HUB_NUM_SESSIONS_BRIDGE"), tmp);
		}

		FUNC15(tmp, t.NumAccessLists);
		FUNC4(ct, FUNC17("SM_HUB_NUM_ACCESSES"), tmp);

		FUNC15(tmp, t.NumUsers);
		FUNC4(ct, FUNC17("SM_HUB_NUM_USERS"), tmp);
		FUNC15(tmp, t.NumGroups);
		FUNC4(ct, FUNC17("SM_HUB_NUM_GROUPS"), tmp);

		FUNC15(tmp, t.NumMacTables);
		FUNC4(ct, FUNC17("SM_HUB_NUM_MAC_TABLES"), tmp);
		FUNC15(tmp, t.NumIpTables);
		FUNC4(ct, FUNC17("SM_HUB_NUM_IP_TABLES"), tmp);

		// Usage status
		FUNC15(tmp, t.NumLogin);
		FUNC4(ct, FUNC17("SM_HUB_NUM_LOGIN"), tmp);

		if (t.LastLoginTime != 0)
		{
			FUNC8(tmp, sizeof(tmp), FUNC13(t.LastLoginTime));
		}
		else
		{
			FUNC14(tmp, sizeof(tmp), FUNC17("COMMON_UNKNOWN"));
		}
		FUNC4(ct, FUNC17("SM_HUB_LAST_LOGIN_TIME"), tmp);

		if (t.LastCommTime != 0)
		{
			FUNC8(tmp, sizeof(tmp), FUNC13(t.LastCommTime));
		}
		else
		{
			FUNC14(tmp, sizeof(tmp), FUNC17("COMMON_UNKNOWN"));
		}
		FUNC4(ct, FUNC17("SM_HUB_LAST_COMM_TIME"), tmp);

		if (t.CreatedTime != 0)
		{
			FUNC8(tmp, sizeof(tmp), FUNC13(t.CreatedTime));
		}
		else
		{
			FUNC14(tmp, sizeof(tmp), FUNC17("COMMON_UNKNOWN"));
		}
		FUNC4(ct, FUNC17("SM_HUB_CREATED_TIME"), tmp);

		// Traffic information
		FUNC0(ct, &t.Traffic);

		FUNC3(ct, c);
	}

	FUNC7(o);

	return 0;
}