#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {char* ClientHostName; char* Username; char* RealUsername; char* GroupName; int /*<<< orphan*/  NodeInfo; int /*<<< orphan*/  Status; int /*<<< orphan*/  ClientIp6; int /*<<< orphan*/  ClientIp; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SESSION_STATUS ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_USER_NAME_PRINT ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  L3_USERNAME ; 
 int /*<<< orphan*/  LINK_USER_NAME_PRINT ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  SNAT_USER_NAME_PRINT ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC21(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_SESSION_STATUS t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC19("CMD_SessionGet_Prompt_NAME"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC19("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC11(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC18(&t, sizeof(t));
	FUNC15(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC15(t.Name, sizeof(t.Name), FUNC8(o, "[name]"));

	// RPC call
	ret = FUNC12(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC6(o);
		return ret;
	}
	else
	{
		wchar_t tmp[MAX_SIZE];
		char str[MAX_SIZE];
		CT *ct = FUNC5();

		if (t.ClientIp != 0)
		{
			FUNC9(str, sizeof(str), t.ClientIp, t.ClientIp6);
			FUNC17(tmp, sizeof(tmp), str);
			FUNC4(ct, FUNC19("SM_CLIENT_IP"), tmp);
		}

		if (FUNC16(t.ClientHostName) != 0)
		{
			FUNC17(tmp, sizeof(tmp), t.ClientHostName);
			FUNC4(ct, FUNC19("SM_CLIENT_HOSTNAME"), tmp);
		}

		FUNC17(tmp, sizeof(tmp), t.Username);
		FUNC4(ct, FUNC19("SM_SESS_STATUS_USERNAME"), tmp);

		if (FUNC14(t.Username, LINK_USER_NAME_PRINT) != 0 && FUNC14(t.Username, SNAT_USER_NAME_PRINT) != 0 && FUNC14(t.Username, BRIDGE_USER_NAME_PRINT) != 0)
		{
			FUNC17(tmp, sizeof(tmp), t.RealUsername);
			FUNC4(ct, FUNC19("SM_SESS_STATUS_REALUSER"), tmp);
		}

		if (FUNC10(t.GroupName) == false)
		{
			FUNC17(tmp, sizeof(tmp), t.GroupName);
			FUNC4(ct, FUNC19("SM_SESS_STATUS_GROUPNAME"), tmp);
		}


		FUNC2(ct, &t.Status, true);

		if (FUNC14(t.Username, LINK_USER_NAME_PRINT) != 0 && FUNC14(t.Username, SNAT_USER_NAME_PRINT) != 0 && FUNC14(t.Username, BRIDGE_USER_NAME_PRINT) != 0 &&
			FUNC13(t.Username, L3_USERNAME) == false)
		{
			FUNC1(ct, &t.NodeInfo);
		}

		FUNC3(ct, c);
	}

	FUNC7(&t);

	FUNC6(o);

	return 0;
}