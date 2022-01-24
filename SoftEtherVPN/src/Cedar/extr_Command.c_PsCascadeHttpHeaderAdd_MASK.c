#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {char* CustomHttpHeader; int /*<<< orphan*/  AccountName; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_20__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_19__ {TYPE_7__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_18__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_EXISTS ; 
 scalar_t__ ERR_TOO_MANT_ITEMS ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int HTTP_CUSTOM_HEADER_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 TYPE_1__* FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 
 TYPE_7__* FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC25(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CREATE_LINK t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC23("CMD_CascadeCreate_Prompt_Name"), *CmdEvalNotEmpty, NULL},
		{"NAME", &CmdPrompt, FUNC23("CMD_CascadeHttpHeader_Prompt_Name"), *CmdEvalNotEmpty, NULL},
		{"DATA", &CmdPrompt, FUNC23("CMD_CascadeHttpHeader_Prompt_Data"), NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC23("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	// Get the parameter list
	o = FUNC12(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC21(&t, sizeof(t));
	FUNC17(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC22(sizeof(CLIENT_OPTION));
	FUNC20(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC10(o, "[name]"));
	ret = FUNC14(ps->Rpc, &t);

	if (ret == ERR_NO_ERROR)
	{
		UINT i = 0;
		TOKEN_LIST *tokens = NULL;
		HTTP_HEADER *header = NULL;
		char *name = FUNC9(o, "NAME");

		FUNC19(name);

		header = FUNC11("", "", "");

		tokens = FUNC13(t.ClientOption->CustomHttpHeader, "\r\n");
		for (i = 0; i < tokens->NumTokens; i++)
		{
			FUNC0(header, tokens->Token[i]);
		}
		FUNC7(tokens);

		if (FUNC8(header, name) == NULL)
		{
			char s[HTTP_CUSTOM_HEADER_MAX_SIZE];
			FUNC3(s, sizeof(s), "%s: %s\r\n", name, FUNC9(o, "DATA"));
			FUNC2(s, ' ');

			if ((FUNC18(s) + FUNC18(t.ClientOption->CustomHttpHeader)) < sizeof(t.ClientOption->CustomHttpHeader)) {
				FUNC16(t.ClientOption->CustomHttpHeader, sizeof(s), s);
				ret = FUNC15(ps->Rpc, &t);
			}
			else
			{
				// Error has occurred
				ret = ERR_TOO_MANT_ITEMS;
			}
		}
		else
		{
			// Error has occurred
			ret = ERR_OBJECT_EXISTS;
		}

		FUNC4(header);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	FUNC6(&t);

	// Release of the parameter list
	FUNC5(o);

	return ret;
}