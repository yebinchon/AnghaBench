#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_13__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_12__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; TYPE_1__* ClientOption; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_11__ {int /*<<< orphan*/  ProxyType; } ;
typedef  TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  PROXY_DIRECT ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

UINT FUNC10(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC9("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC8(&t, sizeof(t));

	FUNC7(t.AccountName, sizeof(t.AccountName), FUNC5(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		RPC_CLIENT_CREATE_ACCOUNT z;
		// Change the settings
		t.ClientOption->ProxyType = PROXY_DIRECT;

		FUNC8(&z, sizeof(z));
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