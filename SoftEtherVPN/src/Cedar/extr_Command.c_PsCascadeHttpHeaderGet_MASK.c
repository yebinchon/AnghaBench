#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  unistr ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  AccountName; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_18__ {TYPE_7__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_17__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int HTTP_CUSTOM_HEADER_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 TYPE_7__* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CREATE_LINK t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC16("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC16("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC14(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC15(sizeof(CLIENT_OPTION));
	FUNC13(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC7(o, "[name]"));
	ret = FUNC10(ps->Rpc, &t);

	// Release of the parameter list
	FUNC5(o);

	if (ret == ERR_NO_ERROR)
	{
		wchar_t unistr[HTTP_CUSTOM_HEADER_MAX_SIZE];
		TOKEN_LIST *tokens = NULL;
		UINT i = 0;
		CT *ct = FUNC4();
		FUNC3(ct, FUNC16("CMD_CT_STD_COLUMN_1"), false);

		tokens = FUNC9(t.ClientOption->CustomHttpHeader, "\r\n");

		for (i = 0; i < tokens->NumTokens; i++)
		{
			FUNC12(unistr, sizeof(unistr), tokens->Token[i]);
			FUNC2(ct, unistr);
		}

		FUNC1(ct, c, false);
	}
	else
	{
		// Error has occurred
		FUNC0(c, ret);
	}

	FUNC6(&t);

	return ret;
}