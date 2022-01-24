#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
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
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_16__ {TYPE_1__* ClientAuth; int /*<<< orphan*/  AccountName; } ;
struct TYPE_15__ {scalar_t__ AuthType; int /*<<< orphan*/ * ClientX; } ;
typedef  TYPE_2__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_3__ PC ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;

/* Variables and functions */
 scalar_t__ CLIENT_AUTHTYPE_CERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC9("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"SAVECERT", &CmdPrompt, FUNC9("CMD_SAVECERTPATH"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC8(&t, sizeof(t));

	FUNC6(t.AccountName, sizeof(t.AccountName), FUNC4(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		if (t.ClientAuth->AuthType != CLIENT_AUTHTYPE_CERT)
		{
			c->Write(c, FUNC9("CMD_CascadeCertSet_Not_Auth_Cert"));
			ret = ERR_INTERNAL_ERROR;
		}
		else if (t.ClientAuth->ClientX == NULL)
		{
			c->Write(c, FUNC9("CMD_CascadeCertSet_Cert_Not_Exists"));
			ret = ERR_INTERNAL_ERROR;
		}
		else
		{
			FUNC7(t.ClientAuth->ClientX, FUNC4(o, "SAVECERT"), true);
		}
	}

	FUNC1(&t);

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC2(c, ret);
	}

	// Release of the parameter list
	FUNC3(o);

	return ret;
}