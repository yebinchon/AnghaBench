#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_20__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,char*) ;} ;
struct TYPE_19__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_1; } ;
struct TYPE_18__ {int /*<<< orphan*/  CapsList; int /*<<< orphan*/  Rpc; } ;
struct TYPE_17__ {int Active; int Online; int /*<<< orphan*/  TapMode; int /*<<< orphan*/  HubName; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_LOCALBRIDGE ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,char*) ; 

UINT FUNC16(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_LOCALBRIDGE t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[hubname]", CmdPrompt, FUNC9("CMD_BridgeCreate_PROMPT_HUBNAME"), CmdEvalNotEmpty, NULL},
		{"DEVICE", CmdPrompt, FUNC9("CMD_BridgeCreate_PROMPT_DEVICE"), CmdEvalNotEmpty, NULL},
		{"TAP", NULL, NULL, NULL, NULL},
	};

	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC8(&t, sizeof(t));

	t.Active = true;
	FUNC7(t.DeviceName, sizeof(t.DeviceName), FUNC3(o, "DEVICE"));
	FUNC7(t.HubName, sizeof(t.HubName), FUNC3(o, "[hubname]"));
	t.Online = true;
	t.TapMode = FUNC4(o, "TAP");

	// RPC call
	ret = FUNC6(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}
	else
	{
		c->Write(c, FUNC9("SM_BRIDGE_INTEL"));
		c->Write(c, L"");

		if (FUNC2(ps->CapsList, "b_is_in_vm"))
		{
			// Message in the case of operating in a VM
			c->Write(c, FUNC9("D_SM_VMBRIDGE@CAPTION"));
			c->Write(c, FUNC9("D_SM_VMBRIDGE@S_1"));
			c->Write(c, FUNC9("D_SM_VMBRIDGE@S_2"));
			c->Write(c, L"");
		}
	}

	FUNC1(o);

	return 0;
}