#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {TYPE_2__* CustomHttpHeader; int /*<<< orphan*/  AccountName; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_22__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_21__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_20__ {TYPE_7__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_19__ {scalar_t__ NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 TYPE_7__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CREATE_LINK t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC15("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"NAME", &CmdPrompt, FUNC15("CMD_CascadeHttpHeader_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC15("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	// Get the parameter list
	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC13(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC14(sizeof(CLIENT_OPTION));
	FUNC12(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC4(o, "[name]"));
	ret = FUNC7(ps->Rpc, &t);

	if (ret == ERR_NO_ERROR)
	{
		UINT i = 0;
		TOKEN_LIST *tokens = NULL;
		char *value = FUNC3(o, "NAME");

		FUNC13(t.ClientOption->CustomHttpHeader, sizeof(t.ClientOption->CustomHttpHeader));

		tokens = FUNC6(t.ClientOption->CustomHttpHeader, "\r\n");

		for (i = 0; i < tokens->NumTokens; i++)
		{
			if (FUNC9(tokens->Token[i], value) == false)
			{
				FUNC10(t.ClientOption->CustomHttpHeader, sizeof(t.ClientOption->CustomHttpHeader), tokens->Token[i]);
				FUNC10(t.ClientOption->CustomHttpHeader, 1, "\r\n");
			}
		}

		ret = FUNC8(ps->Rpc, &t);
	}
	else
	{
		// Error has occurred
		FUNC0(c, ret);
	}

	FUNC2(&t);

	// Release of the parameter list
	FUNC1(o);

	return ret;
}