#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_15__ {char* member_0; TYPE_6__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_13__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; TYPE_1__* ClientOption; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_12__ {void* NoUdpAcceleration; void* DisableQoS; void* NoRoutingTracking; void* RequireMonitorMode; void* RequireBridgeRoutingMode; void* HalfConnection; void* ConnectionDisconnectSpan; void* AdditionalConnectionInterval; void* MaxConnection; } ;
typedef  TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;
typedef  TYPE_6__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	CMD_EVAL_MIN_MAX mm_maxtcp =
	{
		"CMD_CascadeDetailSet_Eval_MaxTcp", 1, 32
	};
	CMD_EVAL_MIN_MAX mm_interval =
	{
		"CMD_CascadeDetailSet_Eval_Interval", 1, 4294967295UL
	};
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", CmdPrompt, FUNC11("CMD_AccountCreate_Prompt_Name"), *CmdEvalNotEmpty, NULL},
		{"MAXTCP", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_MaxTcp"), *CmdEvalMinMax, &mm_maxtcp},
		{"INTERVAL", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_Interval"), *CmdEvalMinMax, &mm_interval},
		{"TTL", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_TTL"), NULL, NULL},
		{"HALF", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_HALF"), NULL, NULL},
		{"BRIDGE", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_BRIDGE"), NULL, NULL},
		{"MONITOR", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_MONITOR"), NULL, NULL},
		{"NOTRACK", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_NOTRACK"), NULL, NULL},
		{"NOQOS", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_NOQOS"), NULL, NULL},
		{"DISABLEUDP", CmdPrompt, FUNC11("CMD_AccountDetailSet_Prompt_DISABLEUDP"), NULL, NULL},
	};

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC10(&t, sizeof(t));

	FUNC9(t.AccountName, sizeof(t.AccountName), FUNC6(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		RPC_CLIENT_CREATE_ACCOUNT z;
		// Data change
		t.ClientOption->MaxConnection = FUNC5(o, "MAXTCP");
		t.ClientOption->AdditionalConnectionInterval = FUNC5(o, "INTERVAL");
		t.ClientOption->ConnectionDisconnectSpan = FUNC5(o, "TTL");
		t.ClientOption->HalfConnection = FUNC7(o, "HALF");
		t.ClientOption->RequireBridgeRoutingMode = FUNC7(o, "BRIDGE");
		t.ClientOption->RequireMonitorMode = FUNC7(o, "MONITOR");
		t.ClientOption->NoRoutingTracking = FUNC7(o, "NOTRACK");
		t.ClientOption->DisableQoS = FUNC7(o, "NOQOS");
		t.ClientOption->NoUdpAcceleration = FUNC7(o, "DISABLEUDP");

		FUNC10(&z, sizeof(z));
		z.CheckServerCert = t.CheckServerCert;
		z.ClientAuth = t.ClientAuth;
		z.ClientOption = t.ClientOption;
		z.ServerCert = t.ServerCert;
		z.StartupAccount = t.StartupAccount;

		ret = FUNC1(pc->RemoteClient, &z);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC3(c, ret);
	}

	FUNC2(&t);

	// Release of the parameter list
	FUNC4(o);

	return ret;
}