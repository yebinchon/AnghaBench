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
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_18__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_17__ {TYPE_1__* ClientOption; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_16__ {scalar_t__ NumTokens; char** Token; } ;
struct TYPE_15__ {TYPE_3__* CustomHttpHeader; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_3__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_5__ PC ;
typedef  TYPE_6__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 TYPE_2__* FUNC8 (TYPE_3__*,char*) ; 
 int FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;

	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC13("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"NAME", &CmdPrompt, FUNC13("CMD_AccountHttpHeader_Prompt_Name"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	LIST *o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC12(&t, sizeof(t));
	FUNC11(t.AccountName, sizeof(t.AccountName), FUNC6(o, "[name]"));
	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		UINT i = 0;
		TOKEN_LIST *tokens = NULL;
		RPC_CLIENT_CREATE_ACCOUNT z;
		char *value = FUNC5(o, "NAME");

		FUNC12(&z, sizeof(z));
		z.CheckServerCert = t.CheckServerCert;
		z.RetryOnServerCert = t.RetryOnServerCert;
		z.ClientAuth = t.ClientAuth;
		z.ClientOption = t.ClientOption;
		z.ServerCert = t.ServerCert;
		z.StartupAccount = t.StartupAccount;

		FUNC12(z.ClientOption->CustomHttpHeader, sizeof(z.ClientOption->CustomHttpHeader));

		tokens = FUNC8(t.ClientOption->CustomHttpHeader, "\r\n");

		for (i = 0; i < tokens->NumTokens; i++)
		{
			if (FUNC9(tokens->Token[i], value) == false)
			{
				FUNC10(z.ClientOption->CustomHttpHeader, sizeof(z.ClientOption->CustomHttpHeader), tokens->Token[i]);
				FUNC10(z.ClientOption->CustomHttpHeader, 1, "\r\n");
			}
		}

		ret = FUNC1(pc->RemoteClient, &z);
	}
	else
	{
		// Error has occurred
		FUNC3(c, ret);
	}

	FUNC2(&t);

	// Release of the parameter list
	FUNC4(o);

	return ret;
}