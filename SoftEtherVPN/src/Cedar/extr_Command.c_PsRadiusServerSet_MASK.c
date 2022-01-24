#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {char* member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {char* member_0; TYPE_5__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {char* HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_13__ {int /*<<< orphan*/  RadiusRetryInterval; int /*<<< orphan*/  RadiusSecret; int /*<<< orphan*/  RadiusServerName; scalar_t__ RadiusPort; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_RADIUS ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  CmdPromptChoosePassword ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (char*,char**,scalar_t__*,int) ; 
 int /*<<< orphan*/  RADIUS_RETRY_INTERVAL ; 
 int /*<<< orphan*/  RADIUS_RETRY_TIMEOUT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_RADIUS t;
	char *host;
	UINT port;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_RadiusServerSet_EVAL_NUMINTERVAL", RADIUS_RETRY_INTERVAL, RADIUS_RETRY_TIMEOUT,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[server_name:port]", CmdPrompt, FUNC10("CMD_RadiusServerSet_Prompt_Host"), *CmdEvalNotEmpty, NULL},
		{"SECRET", CmdPromptChoosePassword, FUNC10("CMD_RadiusServerSet_Prompt_Secret"), NULL, NULL},
		{"RETRY_INTERVAL", CmdPrompt, FUNC10("CMD_RadiusServerSet_Prompt_RetryInterval"), *CmdEvalMinMax, &minmax},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC10("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC6(FUNC4(o, "[server_name:port]"), &host, &port, 1812))
	{
		FUNC9(&t, sizeof(t));

		FUNC8(t.HubName, sizeof(t.HubName), ps->HubName);
		t.RadiusPort = port;
		FUNC8(t.RadiusServerName, sizeof(t.RadiusServerName), host);
		FUNC8(t.RadiusSecret, sizeof(t.RadiusSecret), FUNC4(o, "SECRET"));
		t.RadiusRetryInterval = FUNC3(o, "RETRY_INTERVAL");

		FUNC1(host);

		// RPC call
		ret = FUNC7(ps->Rpc, &t);

		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC2(o);
			return ret;
		}
	}

	FUNC2(o);

	return 0;
}