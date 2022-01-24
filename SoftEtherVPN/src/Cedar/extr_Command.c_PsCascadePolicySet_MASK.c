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
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_16__ {int /*<<< orphan*/  Policy; TYPE_6__* ClientOption; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_LINK ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 TYPE_6__* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC13("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"NAME", &CmdPrompt, FUNC13("CMD_CascadePolicySet_PROMPT_POLNAME"), CmdEvalNotEmpty, NULL},
		{"VALUE", &CmdPrompt, FUNC13("CMD_CascadePolicySet_PROMPT_POLVALUE"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC13("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC11(&t, sizeof(t));
	FUNC9(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC12(sizeof(CLIENT_OPTION));
	FUNC10(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC5(o, "[name]"));

	// RPC call
	ret = FUNC7(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC2(o);
		return ret;
	}
	else
	{
		if (FUNC1(c, &t.Policy, FUNC4(o, "NAME"), FUNC4(o, "VALUE"), true) == false)
		{
			// An error has occured
			FUNC3(&t);
			FUNC2(o);
			return ERR_INTERNAL_ERROR;
		}

		ret = FUNC8(ps->Rpc, &t);
		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC2(o);
			return ret;
		}

		FUNC3(&t);
	}

	FUNC2(o);

	return 0;
}