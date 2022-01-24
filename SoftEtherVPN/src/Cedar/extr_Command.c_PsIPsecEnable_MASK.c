#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  L2TP_DefaultHub; int /*<<< orphan*/  IPsec_Secret; void* EtherIP_IPsec; void* L2TP_Raw; void* L2TP_IPsec; } ;
struct TYPE_8__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_7__ {int /*<<< orphan*/  Rpc; } ;
typedef  TYPE_1__ PS ;
typedef  TYPE_2__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ IPSEC_SERVICES ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

UINT FUNC9(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	IPSEC_SERVICES t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"L2TP", &CmdPrompt, FUNC8("CMD_IPsecEnable_Prompt_L2TP"), CmdEvalNotEmpty, NULL},
		{"L2TPRAW", &CmdPrompt, FUNC8("CMD_IPsecEnable_Prompt_L2TPRAW"), CmdEvalNotEmpty, NULL},
		{"ETHERIP", &CmdPrompt, FUNC8("CMD_IPsecEnable_Prompt_ETHERIP"), CmdEvalNotEmpty, NULL},
		{"PSK", &CmdPrompt, FUNC8("CMD_IPsecEnable_Prompt_PSK"), CmdEvalNotEmpty, NULL},
		{"DEFAULTHUB", &CmdPrompt, FUNC8("CMD_IPsecEnable_Prompt_DEFAULTHUB"), CmdEvalNotEmpty, NULL},
	};

	o = FUNC4(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC7(&t, sizeof(t));
	t.L2TP_IPsec = FUNC3(o, "L2TP");
	t.L2TP_Raw = FUNC3(o, "L2TPRAW");
	t.EtherIP_IPsec = FUNC3(o, "ETHERIP");
	FUNC6(t.IPsec_Secret, sizeof(t.IPsec_Secret), FUNC2(o, "PSK"));
	FUNC6(t.L2TP_DefaultHub, sizeof(t.L2TP_DefaultHub), FUNC2(o, "DEFAULTHUB"));

	// RPC call
	ret = FUNC5(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	FUNC1(o);

	return 0;
}