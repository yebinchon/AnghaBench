#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_11__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_10__ {scalar_t__ ServerType; int Online; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HashedPassword; scalar_t__ HubType; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SERVER_INFO ;
typedef  TYPE_1__ RPC_CREATE_HUB ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  CmdPromptChoosePassword ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_HUB t;
	char *pass = "";
	UINT hub_type = HUB_TYPE_STANDALONE;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC13("CMD_HubCreate_PROMPT_NAME"), CmdEvalNotEmpty, NULL},
		{"PASSWORD", &CmdPromptChoosePassword, NULL, NULL, NULL},
	};

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}
	else
	{
		RPC_SERVER_INFO t;
		FUNC12(&t, sizeof(t));
		if (FUNC8(ps->Rpc, &t) == ERR_NO_ERROR)
		{
			if (t.ServerType == SERVER_TYPE_FARM_CONTROLLER)
			{
				hub_type = HUB_TYPE_FARM_DYNAMIC;
			}
			FUNC2(&t);
		}
	}

	FUNC12(&t, sizeof(t));

	FUNC10(t.HubName, sizeof(t.HubName), FUNC3(o, "[name]"));
	t.HubType = hub_type;

	if (FUNC5(FUNC3(o, "PASSWORD")) == false)
	{
		pass = FUNC3(o, "PASSWORD");
	}

	FUNC9(t.HashedPassword, pass, FUNC11(pass));
	FUNC4(t.SecurePassword, ADMINISTRATOR_USERNAME, pass);
	t.Online = true;

	// RPC call
	ret = FUNC7(ps->Rpc, &t);

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