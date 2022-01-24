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
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_17__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_16__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_14__ {int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SET_USER ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_SET_USER t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC11("CMD_UserCreate_Prompt_NAME"), *CmdEvalNotEmpty, NULL},
		{"GROUP", &CmdPrompt, FUNC11("CMD_UserCreate_Prompt_GROUP"), NULL, NULL},
		{"REALNAME", &CmdPrompt, FUNC11("CMD_UserCreate_Prompt_REALNAME"), NULL, NULL},
		{"NOTE", &CmdPrompt, FUNC11("CMD_UserCreate_Prompt_NOTE"), NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC11("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC5(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC10(&t, sizeof(t));
	// Get the user object
	FUNC8(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC8(t.Name, sizeof(t.Name), FUNC3(o, "[name]"));

	ret = FUNC6(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	// Update the information
	FUNC8(t.GroupName, sizeof(t.GroupName), FUNC3(o, "GROUP"));
	FUNC9(t.Realname, sizeof(t.Realname), FUNC4(o, "REALNAME"));
	FUNC9(t.Note, sizeof(t.Note), FUNC4(o, "NOTE"));

	// Write the user object
	ret = FUNC7(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	FUNC2(&t);

	FUNC1(o);

	return 0;
}