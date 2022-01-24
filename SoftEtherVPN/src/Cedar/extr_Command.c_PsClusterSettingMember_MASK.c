#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_10__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_9__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_8__ {int NumPort; scalar_t__ Weight; scalar_t__* Ports; int /*<<< orphan*/  ServerType; int /*<<< orphan*/  PublicIp; int /*<<< orphan*/  MemberPassword; scalar_t__ ControllerPort; int /*<<< orphan*/  ControllerName; } ;
typedef  TYPE_1__ RPC_FARM ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalHostAndPort ; 
 int /*<<< orphan*/ * CmdEvalIp ; 
 int /*<<< orphan*/ * CmdEvalPortList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 int /*<<< orphan*/ * CmdPromptChoosePassword ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ FARM_DEFAULT_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC9 (char*,char**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * PsClusterSettingMemberPromptIp ; 
 int /*<<< orphan*/ * PsClusterSettingMemberPromptPorts ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVER_TYPE_FARM_MEMBER ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 scalar_t__* FUNC18 (int) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 

UINT FUNC20(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_FARM t;
	char *host_and_port;
	char *host;
	UINT port;
	UINT weight;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[server:port]", CmdPrompt, FUNC19("CMD_ClusterSettingMember_Prompt_HOST_1"), CmdEvalHostAndPort, NULL},
		{"IP", PsClusterSettingMemberPromptIp, NULL, CmdEvalIp, NULL},
		{"PORTS", PsClusterSettingMemberPromptPorts, NULL, CmdEvalPortList, NULL},
		{"PASSWORD", CmdPromptChoosePassword, NULL, NULL, NULL},
		{"WEIGHT", NULL, NULL, NULL, NULL},
	};

	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	weight = FUNC4(o, "WEIGHT");

	if (weight == 0)
	{
		weight = FARM_DEFAULT_WEIGHT;
	}

	FUNC17(&t, sizeof(t));
	host_and_port = FUNC5(o, "[server:port]");
	if (FUNC9(host_and_port, &host, &port, 0))
	{
		char *pw;
		char *ports_str;
		LIST *ports;
		UINT i;

		FUNC13(t.ControllerName, sizeof(t.ControllerName), host);
		t.ControllerPort = port;
		FUNC1(host);

		pw = FUNC5(o, "PASSWORD");

		FUNC12(t.MemberPassword, pw, FUNC14(pw));
		t.PublicIp = FUNC15(FUNC5(o, "IP"));
		t.ServerType = SERVER_TYPE_FARM_MEMBER;

		ports_str = FUNC5(o, "PORTS");

		ports = FUNC16(ports_str);

		t.NumPort = FUNC7(ports);
		t.Ports = FUNC18(sizeof(UINT) * t.NumPort);

		for (i = 0;i < t.NumPort;i++)
		{
			t.Ports[i] = (UINT)FUNC6(ports, i);
		}

		t.Weight = weight;

		FUNC10(ports);

		// RPC call
		ret = FUNC11(ps->Rpc, &t);

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