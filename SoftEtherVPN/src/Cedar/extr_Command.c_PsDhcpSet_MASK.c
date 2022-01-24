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
struct TYPE_14__ {int ApplyDhcpPushRoutes; int /*<<< orphan*/  HubName; int /*<<< orphan*/  DhcpPushRoutes; int /*<<< orphan*/  SaveLog; int /*<<< orphan*/  DhcpDomainName; int /*<<< orphan*/  DhcpDnsServerAddress2; int /*<<< orphan*/  DhcpDnsServerAddress; int /*<<< orphan*/  DhcpGatewayAddress; int /*<<< orphan*/  DhcpExpireTimeSpan; int /*<<< orphan*/  DhcpSubnetMask; int /*<<< orphan*/  DhcpLeaseIPEnd; int /*<<< orphan*/  DhcpLeaseIPStart; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {char* member_0; int member_1; int member_2; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {char* member_0; TYPE_5__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  CapsList; int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;
typedef  TYPE_5__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalIp ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int NAT_UDP_MAX_TIMEOUT ; 
 int NAT_UDP_MIN_TIMEOUT ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	VH_OPTION t;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX mm =
	{
		"CMD_NatSet_Eval_UDP", NAT_UDP_MIN_TIMEOUT / 1000, NAT_UDP_MAX_TIMEOUT / 1000,
	};
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"START", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_START"), *CmdEvalIp, NULL},
		{"END", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_END"), *CmdEvalIp, NULL},
		{"MASK", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_MASK"), *CmdEvalIp, NULL},
		{"EXPIRE", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_EXPIRE"), *CmdEvalMinMax, &mm},
		{"GW", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_GW"), *CmdEvalIp, NULL},
		{"DNS", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_DNS"), *CmdEvalIp, NULL},
		{"DNS2", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_DNS2"), *CmdEvalIp, NULL},
		{"DOMAIN", CmdPrompt, FUNC13("CMD_DhcpSet_Prompt_DOMAIN"), NULL, NULL},
		{"LOG", CmdPrompt, FUNC13("CMD_NatSet_Prompt_LOG"), *CmdEvalNotEmpty, NULL},
		{"PUSHROUTE", NULL, FUNC13("CMD_DhcpSet_PUSHROUTE"), NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC13("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);

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

		FUNC11(&t.DhcpLeaseIPStart, FUNC4(o, "START"));
		FUNC11(&t.DhcpLeaseIPEnd, FUNC4(o, "END"));
		FUNC11(&t.DhcpSubnetMask, FUNC4(o, "MASK"));
		t.DhcpExpireTimeSpan = FUNC3(o, "EXPIRE");
		FUNC11(&t.DhcpGatewayAddress, FUNC4(o, "GW"));
		FUNC11(&t.DhcpDnsServerAddress, FUNC4(o, "DNS"));
		FUNC11(&t.DhcpDnsServerAddress2, FUNC4(o, "DNS2"));
		FUNC10(t.DhcpDomainName, sizeof(t.DhcpDomainName), FUNC4(o, "DOMAIN"));
		t.SaveLog = FUNC5(o, "LOG");

		FUNC10(t.DhcpPushRoutes, sizeof(t.DhcpPushRoutes), FUNC4(o, "PUSHROUTE"));
		t.ApplyDhcpPushRoutes = true;

		FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);
		ret = FUNC9(ps->Rpc, &t);

		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC1(o);
			return ret;
		}

		if (FUNC6(FUNC4(o, "PUSHROUTE")) == false)
		{
			if (FUNC2(ps->CapsList, "b_suppport_push_route") == false &&
				FUNC2(ps->CapsList, "b_suppport_push_route_config"))
			{
				FUNC0(c, ERR_NOT_SUPPORTED_FUNCTION_ON_OPENSOURCE);
			}
		}
	}

	FUNC1(o);

	return 0;
}