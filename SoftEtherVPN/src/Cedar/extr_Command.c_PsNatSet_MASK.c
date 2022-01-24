#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_14__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  SaveLog; void* NatUdpTimeout; void* NatTcpTimeout; void* Mtu; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalMinMax ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ IP_HEADER_SIZE ; 
 scalar_t__ MAC_HEADER_SIZE ; 
 int MAX_L3_DATA_SIZE ; 
 int NAT_TCP_MAX_TIMEOUT ; 
 int NAT_TCP_MIN_TIMEOUT ; 
 int NAT_UDP_MAX_TIMEOUT ; 
 int NAT_UDP_MIN_TIMEOUT ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ TCP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC11(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	VH_OPTION t;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX mtu_mm =
	{
		"CMD_NatSet_Eval_MTU", TCP_HEADER_SIZE + IP_HEADER_SIZE + MAC_HEADER_SIZE + 8, MAX_L3_DATA_SIZE,
	};
	CMD_EVAL_MIN_MAX tcp_mm =
	{
		"CMD_NatSet_Eval_TCP", NAT_TCP_MIN_TIMEOUT / 1000, NAT_TCP_MAX_TIMEOUT / 1000,
	};
	CMD_EVAL_MIN_MAX udp_mm =
	{
		"CMD_NatSet_Eval_UDP", NAT_UDP_MIN_TIMEOUT / 1000, NAT_UDP_MAX_TIMEOUT / 1000,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"MTU", CmdPrompt, FUNC9("CMD_NatSet_Prompt_MTU"), CmdEvalMinMax, &mtu_mm},
		{"TCPTIMEOUT", CmdPrompt, FUNC9("CMD_NatSet_Prompt_TCPTIMEOUT"), CmdEvalMinMax, &tcp_mm},
		{"UDPTIMEOUT", CmdPrompt, FUNC9("CMD_NatSet_Prompt_UDPTIMEOUT"), CmdEvalMinMax, &udp_mm},
		{"LOG", CmdPrompt, FUNC9("CMD_NatSet_Prompt_LOG"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC9("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC4(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC8(&t, sizeof(t));
	FUNC7(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC5(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}
	else
	{
		t.Mtu = FUNC2(o, "MTU");
		t.NatTcpTimeout = FUNC2(o, "TCPTIMEOUT");
		t.NatUdpTimeout = FUNC2(o, "UDPTIMEOUT");
		t.SaveLog = FUNC3(o, "LOG");

		FUNC7(t.HubName, sizeof(t.HubName), ps->HubName);
		ret = FUNC6(ps->Rpc, &t);

		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC1(o);
			return ret;
		}
	}

	FUNC1(o);

	return 0;
}