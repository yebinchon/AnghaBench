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
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int Active; int Discard; int /*<<< orphan*/  Established; int /*<<< orphan*/  CheckTcpState; int /*<<< orphan*/  DestPortEnd; int /*<<< orphan*/  DestPortStart; int /*<<< orphan*/  SrcPortEnd; int /*<<< orphan*/  SrcPortStart; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  DestSubnetMask; int /*<<< orphan*/  DestIpAddress; int /*<<< orphan*/  SrcSubnetMask; int /*<<< orphan*/  SrcIpAddress; int /*<<< orphan*/  DstMacMask; int /*<<< orphan*/  DstMacAddress; int /*<<< orphan*/  CheckDstMac; int /*<<< orphan*/  SrcMacMask; int /*<<< orphan*/  SrcMacAddress; int /*<<< orphan*/  CheckSrcMac; int /*<<< orphan*/  DestUsername; int /*<<< orphan*/  SrcUsername; int /*<<< orphan*/  Priority; int /*<<< orphan*/  Note; } ;
struct TYPE_18__ {char* member_0; int member_1; unsigned long member_2; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {int /*<<< orphan*/  HubName; TYPE_6__ Access; } ;
typedef  TYPE_1__ RPC_ADD_ACCESS ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ CMD_EVAL_MIN_MAX ;
typedef  TYPE_6__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalIpAndMask4 ; 
 int /*<<< orphan*/ * CmdEvalMacAddressAndMask ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/ * CmdEvalPortRange ; 
 int /*<<< orphan*/ * CmdEvalProtocol ; 
 int /*<<< orphan*/ * CmdEvalTcpState ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ADD_ACCESS t;
	ACCESS *a;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_AccessAdd_Eval_PRIORITY", 1, 4294967295UL,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[pass|discard]", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_TYPE"), *CmdEvalNotEmpty, NULL},
		{"MEMO", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_MEMO"), NULL, NULL},
		{"PRIORITY", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_PRIORITY"), *CmdEvalMinMax, &minmax},
		{"SRCUSERNAME", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_SRCUSERNAME"), NULL, NULL},
		{"DESTUSERNAME", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_DESTUSERNAME"), NULL, NULL},
		{"SRCMAC", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_SRCMAC"), *CmdEvalMacAddressAndMask, NULL},
		{"DESTMAC", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_DESTMAC"), *CmdEvalMacAddressAndMask, NULL},
		{"SRCIP", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_SRCIP"), *CmdEvalIpAndMask4, NULL},
		{"DESTIP", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_DESTIP"), *CmdEvalIpAndMask4, NULL},
		{"PROTOCOL", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_PROTOCOL"), *CmdEvalProtocol, NULL},
		{"SRCPORT", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_SRCPORT"), *CmdEvalPortRange, NULL},
		{"DESTPORT", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_DESTPORT"), *CmdEvalPortRange, NULL},
		{"TCPSTATE", CmdPrompt, FUNC16("CMD_AccessAdd_Prompt_TCPSTATE"), *CmdEvalTcpState, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC16("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC15(&t, sizeof(t));
	a = &t.Access;

	FUNC11(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC14(a->Note, sizeof(a->Note), FUNC4(o, "MEMO"));
	a->Active = true;
	a->Priority = FUNC2(o, "PRIORITY");
	a->Discard = FUNC12(FUNC3(o, "[pass|discard]")) ? false : true;
	FUNC11(a->SrcUsername, sizeof(a->SrcUsername), FUNC3(o, "SRCUSERNAME"));
	FUNC11(a->DestUsername, sizeof(a->DestUsername), FUNC3(o, "DESTUSERNAME"));
	FUNC7(FUNC3(o, "SRCMAC"), &a->CheckSrcMac, a->SrcMacAddress, a->SrcMacMask);
	FUNC7(FUNC3(o, "DESTMAC"), &a->CheckDstMac, a->DstMacAddress, a->DstMacMask);
	FUNC6(FUNC3(o, "SRCIP"), &a->SrcIpAddress, &a->SrcSubnetMask);
	FUNC6(FUNC3(o, "DESTIP"), &a->DestIpAddress, &a->DestSubnetMask);
	a->Protocol = FUNC13(FUNC3(o, "PROTOCOL"));
	FUNC8(FUNC3(o, "SRCPORT"), &a->SrcPortStart, &a->SrcPortEnd);
	FUNC8(FUNC3(o, "DESTPORT"), &a->DestPortStart, &a->DestPortEnd);
	FUNC9(FUNC3(o, "TCPSTATE"), &a->CheckTcpState, &a->Established);

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

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