#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_16__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; TYPE_1__* ClientOption; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_15__ {scalar_t__ NumTokens; int /*<<< orphan*/ * Token; } ;
struct TYPE_14__ {char* CustomHttpHeader; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_5__ PC ;
typedef  TYPE_6__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  HTTP_HEADER ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_EXISTS ; 
 scalar_t__ ERR_TOO_MANT_ITEMS ; 
 int /*<<< orphan*/  FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int HTTP_CUSTOM_HEADER_MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 TYPE_2__* FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

UINT FUNC22(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC21("CMD_AccountCreate_Prompt_Name"), *CmdEvalNotEmpty, NULL},
		{"NAME", &CmdPrompt, FUNC21("CMD_AccountHttpHeader_Prompt_Name"), *CmdEvalNotEmpty, NULL},
		{"DATA", &CmdPrompt, FUNC21("CMD_AccountHttpHeader_Prompt_Data"), NULL, NULL},
	};

	// Get the parameter list
	o = FUNC14(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC20(&t, sizeof(t));
	FUNC19(t.AccountName, sizeof(t.AccountName), FUNC12(o, "[name]"));
	ret = FUNC1(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		UINT i = 0;
		TOKEN_LIST *tokens = NULL;
		HTTP_HEADER *header = NULL;
		char *name = FUNC11(o, "NAME");

		FUNC18(name);

		header = FUNC13("", "", "");

		tokens = FUNC15(t.ClientOption->CustomHttpHeader, "\r\n");
		for (i = 0; i < tokens->NumTokens; i++)
		{
			FUNC0(header, tokens->Token[i]);
		}
		FUNC9(tokens);

		if (FUNC10(header, name) == NULL)
		{
			RPC_CLIENT_CREATE_ACCOUNT z;
			char s[HTTP_CUSTOM_HEADER_MAX_SIZE];

			FUNC6(s, sizeof(s), "%s: %s\r\n", name, FUNC11(o, "DATA"));
			FUNC5(s, ' ');

			if ((FUNC17(s) + FUNC17(t.ClientOption->CustomHttpHeader)) < sizeof(t.ClientOption->CustomHttpHeader)) {
				FUNC16(t.ClientOption->CustomHttpHeader, sizeof(s), s);

				FUNC20(&z, sizeof(z));
				z.CheckServerCert = t.CheckServerCert;
				z.RetryOnServerCert = t.RetryOnServerCert;
				z.ClientAuth = t.ClientAuth;
				z.ClientOption = t.ClientOption;
				z.ServerCert = t.ServerCert;
				z.StartupAccount = t.StartupAccount;

				ret = FUNC2(pc->RemoteClient, &z);
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

		FUNC7(header);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC4(c, ret);
	}

	FUNC3(&t);

	// Release of the parameter list
	FUNC8(o);

	return ret;
}