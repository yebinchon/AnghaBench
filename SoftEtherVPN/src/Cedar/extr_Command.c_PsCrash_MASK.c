#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_11__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_10__ {int /*<<< orphan*/  Rpc; } ;
typedef  int /*<<< orphan*/  RPC_TEST ;
typedef  TYPE_1__ PS ;
typedef  TYPE_2__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 

UINT FUNC10(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	char *yes;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[yes]", &CmdPrompt, FUNC7("CMD_Crash_Confirm"), NULL, NULL},
	};

	o = FUNC3(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	yes = FUNC2(o, "[yes]");

	if (FUNC5(yes, "yes") != 0)
	{
		c->Write(c, FUNC7("CMD_Crash_Aborted"));
	}
	else
	{
		RPC_TEST t;
		UINT ret;

		c->Write(c, FUNC7("CMD_Crash_Msg"));

		FUNC6(&t, sizeof(t));

		ret = FUNC4(ps->Rpc, &t);

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