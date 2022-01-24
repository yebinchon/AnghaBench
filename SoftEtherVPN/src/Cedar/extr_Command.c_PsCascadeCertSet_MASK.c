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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_18__ {TYPE_1__* ClientAuth; TYPE_7__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_17__ {int /*<<< orphan*/ * ClientK; int /*<<< orphan*/ * ClientX; int /*<<< orphan*/  AuthType; } ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_CERT ; 
 int /*<<< orphan*/  CmdEvalIsFile ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int FUNC0 (TYPE_5__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 TYPE_7__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	X *x;
	K *k;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC14("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"LOADCERT", &CmdPrompt, FUNC14("CMD_LOADCERTPATH"), CmdEvalIsFile, NULL},
		{"LOADKEY", &CmdPrompt, FUNC14("CMD_LOADKEYPATH"), CmdEvalIsFile, NULL},
	};
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC14("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC0(c, &x, &k, FUNC6(o, "LOADCERT"), FUNC6(o, "LOADKEY")) == false)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC12(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC13(sizeof(CLIENT_OPTION));
	FUNC11(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC6(o, "[name]"));

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC5(x);
		FUNC2(k);
		FUNC1(c, ret);
		FUNC3(o);
		return ret;
	}
	else
	{
		// Change authentication data
		t.ClientAuth->AuthType = CLIENT_AUTHTYPE_CERT;
		if (t.ClientAuth->ClientX != NULL)
		{
			FUNC5(t.ClientAuth->ClientX);
		}
		if (t.ClientAuth->ClientK != NULL)
		{
			FUNC2(t.ClientAuth->ClientK);
		}

		t.ClientAuth->ClientX = x;
		t.ClientAuth->ClientK = k;

		ret = FUNC9(ps->Rpc, &t);
		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC1(c, ret);
			FUNC3(o);
			return ret;
		}

		FUNC4(&t);
	}

	FUNC3(o);

	return 0;
}