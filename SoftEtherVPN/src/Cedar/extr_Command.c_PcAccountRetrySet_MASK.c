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
struct TYPE_16__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_15__ {char* member_0; TYPE_6__* member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_13__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; TYPE_1__* ClientOption; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_12__ {scalar_t__ RetryInterval; scalar_t__ NumRetry; } ;
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
 int /*<<< orphan*/  CmdEvalMinMax ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

UINT FUNC11(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_AccountRetrySet_EVAL_INTERVAL",
		5,
		4294967295UL,
	};
	PARAM args[] =
	{
		{"[name]", CmdPrompt, FUNC10("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"NUM", CmdPrompt, FUNC10("CMD_AccountRetrySet_PROMPT_NUM"), CmdEvalNotEmpty, NULL},
		{"INTERVAL", CmdPrompt, FUNC10("CMD_AccountRetrySet_PROMPT_INTERVAL"), CmdEvalMinMax, &minmax},
	};

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC9(&t, sizeof(t));

	FUNC8(t.AccountName, sizeof(t.AccountName), FUNC6(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		RPC_CLIENT_CREATE_ACCOUNT z;
		// Change the settings
		UINT num = FUNC5(o, "NUM");
		UINT interval = FUNC5(o, "INTERVAL");

		t.ClientOption->NumRetry = (num == 999) ? INFINITE : num;
		t.ClientOption->RetryInterval = interval;

		FUNC9(&z, sizeof(z));
		z.CheckServerCert = t.CheckServerCert;
		z.RetryOnServerCert = t.RetryOnServerCert;
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