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
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  (* Write ) (TYPE_6__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_18__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_17__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  ClientOption; TYPE_1__* ClientAuth; int /*<<< orphan*/  RetryOnServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
struct TYPE_16__ {scalar_t__ AuthType; int /*<<< orphan*/  Username; } ;
typedef  TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_4__ PC ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_6__ CONSOLE ;

/* Variables and functions */
 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_6__*,char*,int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ ) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC11("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"USERNAME", &CmdPrompt, FUNC11("CMD_AccountCreate_Prompt_Username"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC10(&t, sizeof(t));

	FUNC9(t.AccountName, sizeof(t.AccountName), FUNC6(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		RPC_CLIENT_CREATE_ACCOUNT z;
		// Change the settings
		FUNC8(t.ClientAuth->Username, sizeof(t.ClientAuth->Username), FUNC5(o, "USERNAME"));

		if (t.ClientAuth->AuthType == CLIENT_AUTHTYPE_PASSWORD)
		{
			c->Write(c, FUNC11("CMD_AccountUsername_Notice"));
		}

		FUNC10(&z, sizeof(z));
		z.CheckServerCert = t.CheckServerCert;
		z.RetryOnServerCert = t.RetryOnServerCert;
		z.ClientAuth = t.ClientAuth;
		z.ClientOption = t.ClientOption;
		z.ServerCert = t.ServerCert;
		z.StartupAccount = t.StartupAccount;

		ret = FUNC1(pc->RemoteClient, &z);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC3(c, ret);
	}

	FUNC2(&t);

	// Release of the parameter list
	FUNC4(o);

	return ret;
}