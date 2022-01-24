#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  unistr ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_13__ {TYPE_1__* ClientOption; int /*<<< orphan*/  AccountName; } ;
struct TYPE_12__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
struct TYPE_11__ {int /*<<< orphan*/  CustomHttpHeader; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int HTTP_CUSTOM_HEADER_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC14("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	LIST *o = FUNC9(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC13(&t, sizeof(t));
	FUNC12(t.AccountName, sizeof(t.AccountName), FUNC8(o, "[name]"));
	ret = FUNC0(pc->RemoteClient, &t);

	// Release of the parameter list
	FUNC7(o);

	if (ret == ERR_NO_ERROR)
	{
		wchar_t unistr[HTTP_CUSTOM_HEADER_MAX_SIZE];
		TOKEN_LIST *tokens = NULL;
		UINT i = 0;
		CT *ct = FUNC6();
		FUNC5(ct, FUNC14("CMD_CT_STD_COLUMN_1"), false);

		tokens = FUNC10(t.ClientOption->CustomHttpHeader, "\r\n");

		for (i = 0; i < tokens->NumTokens; i++)
		{
			FUNC11(unistr, sizeof(unistr), tokens->Token[i]);
			FUNC4(ct, unistr);
		}

		FUNC3(ct, c, false);
	}
	else
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	FUNC1(&t);

	return ret;
}