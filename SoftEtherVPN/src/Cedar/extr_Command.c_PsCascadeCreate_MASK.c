#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  (* Write ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_18__ {char* HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_17__ {int Online; TYPE_2__* ClientAuth; TYPE_1__* ClientOption; int /*<<< orphan*/  Policy; int /*<<< orphan*/  HubName; } ;
struct TYPE_16__ {int /*<<< orphan*/  Username; int /*<<< orphan*/  AuthType; } ;
struct TYPE_15__ {int RetryInterval; int MaxConnection; int UseEncrypt; int AdditionalConnectionInterval; int RequireBridgeRoutingMode; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Hostname; scalar_t__ Port; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_3__ RPC_CREATE_LINK ;
typedef  TYPE_4__ PS ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_6__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CLIENT_AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_ANONYMOUS ; 
 int /*<<< orphan*/  CmdEvalHostAndPort ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  CmdEvalSafe ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_6__*,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**,scalar_t__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 void* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	char *host = NULL;
	UINT port = 443;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC15("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"SERVER", &CmdPrompt, FUNC15("CMD_CascadeCreate_Prompt_Server"), CmdEvalHostAndPort, NULL},
		{"HUB", &CmdPrompt, FUNC15("CMD_CascadeCreate_Prompt_Hub"), CmdEvalSafe, NULL},
		{"USERNAME", &CmdPrompt, FUNC15("CMD_CascadeCreate_Prompt_Username"), CmdEvalNotEmpty, NULL},
	};
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC15("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC9(FUNC6(o, "SERVER"), &host, &port, 443);

	FUNC13(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);

	t.Online = false;

	FUNC1(&t.Policy, FUNC5(), sizeof(POLICY));

	t.ClientOption = FUNC14(sizeof(CLIENT_OPTION));
	FUNC12(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC7(o, "[name]"));
	t.ClientOption->Port = port;
	FUNC11(t.ClientOption->Hostname, sizeof(t.ClientOption->Hostname), host);
	FUNC11(t.ClientOption->HubName, sizeof(t.ClientOption->HubName), FUNC6(o, "HUB"));
	t.ClientOption->NumRetry = INFINITE;
	t.ClientOption->RetryInterval = 15;
	t.ClientOption->MaxConnection = 8;
	t.ClientOption->UseEncrypt = true;
	t.ClientOption->AdditionalConnectionInterval = 1;
	t.ClientOption->RequireBridgeRoutingMode = true;

	t.ClientAuth = FUNC14(sizeof(CLIENT_AUTH));
	t.ClientAuth->AuthType = CLIENT_AUTHTYPE_ANONYMOUS;
	FUNC11(t.ClientAuth->Username, sizeof(t.ClientAuth->Username), FUNC6(o, "USERNAME"));

	FUNC2(host);

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC3(o);
		return ret;
	}

	FUNC4(&t);

	FUNC3(o);

	return 0;
}