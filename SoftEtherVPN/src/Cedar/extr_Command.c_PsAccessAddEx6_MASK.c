#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {int IsIPv6; int Active; int Discard; int /*<<< orphan*/  RedirectUrl; void* Loss; void* Jitter; void* Delay; int /*<<< orphan*/  Established; int /*<<< orphan*/  CheckTcpState; int /*<<< orphan*/  DestPortEnd; int /*<<< orphan*/  DestPortStart; int /*<<< orphan*/  SrcPortEnd; int /*<<< orphan*/  SrcPortStart; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  DestSubnetMask6; int /*<<< orphan*/  DestIpAddress6; int /*<<< orphan*/  SrcSubnetMask6; int /*<<< orphan*/  SrcIpAddress6; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; int /*<<< orphan*/  CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; int /*<<< orphan*/  CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; void* Priority; int /*<<< orphan*/  Note; } ;
struct TYPE_23__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_21__ {char* member_0; TYPE_6__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_20__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; int /*<<< orphan*/  CapsList; } ;
struct TYPE_19__ {int /*<<< orphan*/  HubName; TYPE_7__ Access; } ;
typedef  TYPE_1__ RPC_ADD_ACCESS ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_1__ IP ;
typedef  TYPE_5__ CONSOLE ;
typedef  TYPE_6__ CMD_EVAL_MIN_MAX ;
typedef  TYPE_7__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalIpAndMask6 ; 
 int /*<<< orphan*/ * CmdEvalMacAddressAndMask ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/ * CmdEvalPortRange ; 
 int /*<<< orphan*/ * CmdEvalProtocol ; 
 int /*<<< orphan*/ * CmdEvalTcpState ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 unsigned long HUB_ACCESSLIST_DELAY_MAX ; 
 unsigned long HUB_ACCESSLIST_JITTER_MAX ; 
 unsigned long HUB_ACCESSLIST_LOSS_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ *) ; 

UINT FUNC22(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ADD_ACCESS t;
	ACCESS *a;
	IP ip, mask;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_AccessAdd6_Eval_PRIORITY", 1, 4294967295UL,
	};
	CMD_EVAL_MIN_MAX minmax_delay =
	{
		"CMD_AccessAddEx6_Eval_DELAY", 0, HUB_ACCESSLIST_DELAY_MAX,
	};
	CMD_EVAL_MIN_MAX minmax_jitter =
	{
		"CMD_AccessAddEx6_Eval_JITTER", 0, HUB_ACCESSLIST_JITTER_MAX,
	};
	CMD_EVAL_MIN_MAX minmax_loss =
	{
		"CMD_AccessAddEx6_Eval_LOSS", 0, HUB_ACCESSLIST_LOSS_MAX,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[pass|discard]", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_TYPE"), CmdEvalNotEmpty, NULL},
		{"MEMO", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_MEMO"), NULL, NULL},
		{"PRIORITY", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_PRIORITY"), CmdEvalMinMax, &minmax},
		{"SRCUSERNAME", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_SRCUSERNAME"), NULL, NULL},
		{"DESTUSERNAME", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_DESTUSERNAME"), NULL, NULL},
		{"SRCMAC", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_SRCMAC"), CmdEvalMacAddressAndMask, NULL},
		{"DESTMAC", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_DESTMAC"), CmdEvalMacAddressAndMask, NULL},
		{"SRCIP", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_SRCIP"), CmdEvalIpAndMask6, NULL},
		{"DESTIP", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_DESTIP"), CmdEvalIpAndMask6, NULL},
		{"PROTOCOL", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_PROTOCOL"), CmdEvalProtocol, NULL},
		{"SRCPORT", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_SRCPORT"), CmdEvalPortRange, NULL},
		{"DESTPORT", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_DESTPORT"), CmdEvalPortRange, NULL},
		{"TCPSTATE", CmdPrompt, FUNC19("CMD_AccessAdd6_Prompt_TCPSTATE"), CmdEvalTcpState, NULL},
		{"DELAY", CmdPrompt, FUNC19("CMD_AccessAddEx6_Prompt_DELAY"), CmdEvalMinMax, &minmax_delay},
		{"JITTER", CmdPrompt, FUNC19("CMD_AccessAddEx6_Prompt_JITTER"), CmdEvalMinMax, &minmax_jitter},
		{"LOSS", CmdPrompt, FUNC19("CMD_AccessAddEx6_Prompt_LOSS"), CmdEvalMinMax, &minmax_loss},
		{"REDIRECTURL", NULL, NULL, NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC19("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	// Check whether it is supported
	if (FUNC2(ps->CapsList, "b_support_ex_acl") == false)
	{
		c->Write(c, FUNC18(ERR_NOT_SUPPORTED));
		return ERR_NOT_SUPPORTED;
	}

	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC17(&t, sizeof(t));
	a = &t.Access;

	a->IsIPv6 = true;

	FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC16(a->Note, sizeof(a->Note), FUNC5(o, "MEMO"));
	a->Active = true;
	a->Priority = FUNC3(o, "PRIORITY");
	a->Discard = FUNC14(FUNC4(o, "[pass|discard]")) ? false : true;
	FUNC13(a->SrcUsername, sizeof(a->SrcUsername), FUNC4(o, "SRCUSERNAME"));
	FUNC13(a->DestUsername, sizeof(a->DestUsername), FUNC4(o, "DESTUSERNAME"));
	FUNC9(FUNC4(o, "SRCMAC"), &a->CheckSrcMac, a->SrcMacAddress, a->SrcMacMask);
	FUNC9(FUNC4(o, "DESTMAC"), &a->CheckDstMac, a->DstMacAddress, a->DstMacMask);

	FUNC17(&ip, sizeof(ip));
	FUNC17(&mask, sizeof(mask));

	FUNC8(FUNC4(o, "SRCIP"), &ip, &mask);
	FUNC6(&a->SrcIpAddress6, &ip);
	FUNC6(&a->SrcSubnetMask6, &mask);

	FUNC8(FUNC4(o, "DESTIP"), &ip, &mask);
	FUNC6(&a->DestIpAddress6, &ip);
	FUNC6(&a->DestSubnetMask6, &mask);

	a->Protocol = FUNC15(FUNC4(o, "PROTOCOL"));
	FUNC10(FUNC4(o, "SRCPORT"), &a->SrcPortStart, &a->SrcPortEnd);
	FUNC10(FUNC4(o, "DESTPORT"), &a->DestPortStart, &a->DestPortEnd);
	FUNC11(FUNC4(o, "TCPSTATE"), &a->CheckTcpState, &a->Established);
	a->Delay = FUNC3(o, "DELAY");
	a->Jitter = FUNC3(o, "JITTER");
	a->Loss = FUNC3(o, "LOSS");
	FUNC13(a->RedirectUrl, sizeof(a->RedirectUrl), FUNC4(o, "REDIRECTURL"));

	// RPC call
	ret = FUNC12(ps->Rpc, &t);

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