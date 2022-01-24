#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_19__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_17__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_15__ {int SaveSecurityLog; int SavePacketLog; } ;
struct TYPE_16__ {TYPE_1__ LogSetting; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_HUB_LOG ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_HUB_LOG t;
	bool packet_log = false;
	char *tmp;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[security|packet]", &CmdPrompt, FUNC9("CMD_LogEnable_Prompt"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC9("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC3(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	tmp = FUNC2(o, "[security|packet]");

	if (FUNC6(tmp, "p"))
	{
		packet_log = true;
	}
	else if (FUNC6(tmp, "s") == false)
	{
		c->Write(c, FUNC9("CMD_LogEnable_Prompt_Error"));
		FUNC1(o);
		return ERR_INVALID_PARAMETER;
	}

	FUNC8(&t, sizeof(t));

	FUNC7(t.HubName, sizeof(t.HubName), ps->HubName);

	// RPC call
	ret = FUNC4(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	if (packet_log == false)
	{
		t.LogSetting.SaveSecurityLog = false;
	}
	else
	{
		t.LogSetting.SavePacketLog = false;
	}

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