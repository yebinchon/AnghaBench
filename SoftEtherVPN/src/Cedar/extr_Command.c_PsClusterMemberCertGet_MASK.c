#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_FARM_INFO ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC11(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_FARM_INFO t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[id]", &CmdPrompt, FUNC9("CMD_ClusterMemberCertGet_PROMPT_ID"), NULL, NULL},
		{"SAVECERT", &CmdPrompt, FUNC9("CMD_SAVECERTPATH"), *CmdEvalNotEmpty, NULL},
	};

	o = FUNC4(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC8(&t, sizeof(t));

	t.Id = FUNC6(FUNC3(o, "[id]"));

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
		X *x = t.ServerCert;
		wchar_t *filename = FUNC3(o, "SAVECERT");

		if (FUNC7(x, filename, true) == false)
		{
			c->Write(c, FUNC9("CMD_SAVECERT_FAILED"));

			ret = ERR_INTERNAL_ERROR;
		}
	}

	FUNC2(&t);

	FUNC1(o);

	return ret;
}