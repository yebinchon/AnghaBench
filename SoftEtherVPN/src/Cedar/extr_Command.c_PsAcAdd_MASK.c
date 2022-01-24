#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {int Deny; int Masked; int /*<<< orphan*/  Priority; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; } ;
struct TYPE_22__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {char* member_0; TYPE_5__* member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_18__ {int /*<<< orphan*/  o; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_AC_LIST ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ CMD_EVAL_MIN_MAX ;
typedef  TYPE_6__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalIpAndMask4 ; 
 int /*<<< orphan*/  CmdEvalMinMax ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 TYPE_6__* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_AC_LIST t;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX mm =
	{
		"CMD_AcAdd_Eval_PRIORITY", 1, 4294967295UL,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[allow|deny]", CmdPrompt, FUNC15("CMD_AcAdd_Prompt_AD"), CmdEvalNotEmpty, NULL},
		{"PRIORITY", CmdPrompt, FUNC15("CMD_AcAdd_Prompt_PRIORITY"), CmdEvalMinMax, &mm},
		{"IP", CmdPrompt, FUNC15("CMD_AcAdd_Prompt_IP"), CmdEvalIpAndMask4, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC15("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&t, sizeof(t));
	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC8(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}
	else
	{
		// Add a new item to the list
		AC *ac = FUNC14(sizeof(AC));
		char *test = FUNC4(o, "[allow|deny]");
		UINT u_ip, u_mask;

		if (FUNC10("deny", test))
		{
			ac->Deny = true;
		}

		FUNC7(FUNC4(o, "IP"), &u_ip, &u_mask);
		FUNC12(&ac->IpAddress, u_ip);

		if (u_mask == 0xffffffff)
		{
			ac->Masked = false;
		}
		else
		{
			ac->Masked = true;
			FUNC12(&ac->SubnetMask, u_mask);
		}

		ac->Priority = FUNC3(o, "PRIORITY");

		FUNC5(t.o, ac);

		ret = FUNC9(ps->Rpc, &t);
		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC1(o);
			return ret;
		}
	}

	FUNC2(&t);

	FUNC1(o);

	return 0;
}