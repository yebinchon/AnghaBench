#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; scalar_t__ ProxyPort; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  AccountName; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_17__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_16__ {char* HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_15__ {TYPE_6__* ClientOption; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalHostAndPort ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  PROXY_HTTP ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (char*,char**,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 TYPE_6__* FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", CmdPrompt, FUNC14("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"SERVER", CmdPrompt, FUNC14("CMD_CascadeProxyHttp_Prompt_Server"), CmdEvalHostAndPort, NULL},
		{"USERNAME", NULL, NULL, NULL, NULL},
		{"PASSWORD", NULL, NULL, NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC14("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC13(sizeof(CLIENT_OPTION));
	FUNC11(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC5(o, "[name]"));

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC2(o);
		return ret;
	}
	else
	{
		char *host;
		UINT port;

		// Data change
		if (FUNC7(FUNC4(o, "SERVER"), &host, &port, 8080))
		{
			t.ClientOption->ProxyType = PROXY_HTTP;
			FUNC10(t.ClientOption->ProxyName, sizeof(t.ClientOption->ProxyName), host);
			t.ClientOption->ProxyPort = port;
			FUNC10(t.ClientOption->ProxyUsername, sizeof(t.ClientOption->ProxyName), FUNC4(o, "USERNAME"));
			FUNC10(t.ClientOption->ProxyPassword, sizeof(t.ClientOption->ProxyName), FUNC4(o, "PASSWORD"));
			FUNC1(host);
		}

		ret = FUNC9(ps->Rpc, &t);
		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC2(o);
			return ret;
		}

		FUNC3(&t);
	}

	FUNC2(o);

	return 0;
}