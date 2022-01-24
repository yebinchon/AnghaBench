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
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_13__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_12__ {TYPE_2__* ClientAuth; TYPE_1__* ClientOption; } ;
struct TYPE_11__ {int /*<<< orphan*/  Username; int /*<<< orphan*/  AuthType; } ;
struct TYPE_10__ {int RetryInterval; int MaxConnection; int UseEncrypt; int AdditionalConnectionInterval; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Hostname; scalar_t__ Port; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_ANONYMOUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  CmdEvalHostAndPort ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  CmdEvalSafe ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int) ; 
 void* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_CREATE_ACCOUNT t;
	UINT port = 443;
	char *host = NULL;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"SERVER", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Server"), CmdEvalHostAndPort, NULL},
		{"HUB", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Hub"), CmdEvalSafe, NULL},
		{"USERNAME", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Username"), CmdEvalNotEmpty, NULL},
		{"NICNAME", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Nicname"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC8(FUNC5(o, "SERVER"), &host, &port, 443);

	// RPC call
	FUNC11(&t, sizeof(t));

	t.ClientOption = FUNC12(sizeof(CLIENT_OPTION));
	FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC6(o, "[name]"));
	t.ClientOption->Port = port;
	FUNC9(t.ClientOption->Hostname, sizeof(t.ClientOption->Hostname), host);
	FUNC9(t.ClientOption->HubName, sizeof(t.ClientOption->HubName), FUNC5(o, "HUB"));
	t.ClientOption->NumRetry = INFINITE;
	t.ClientOption->RetryInterval = 15;
	t.ClientOption->MaxConnection = 1;
	t.ClientOption->UseEncrypt = true;
	t.ClientOption->AdditionalConnectionInterval = 1;
	FUNC9(t.ClientOption->DeviceName, sizeof(t.ClientOption->DeviceName), FUNC5(o, "NICNAME"));

	t.ClientAuth = FUNC12(sizeof(CLIENT_AUTH));
	t.ClientAuth->AuthType = CLIENT_AUTHTYPE_ANONYMOUS;
	FUNC9(t.ClientAuth->Username, sizeof(t.ClientAuth->Username), FUNC5(o, "USERNAME"));

	FUNC3(host);

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Success
	}

	FUNC1(&t);

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	// Release of the parameter list
	FUNC4(o);

	return ret;
}