#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_13__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_12__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ RPC_CERT ;
typedef  TYPE_2__ PC ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  CmdEvalIsFile ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC10(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CERT t;
	X *x;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[path]", &CmdPrompt, FUNC8("CMD_CAAdd_PROMPT_PATH"), CmdEvalIsFile, NULL},
	};

	// Get the parameter list
	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}


	x = FUNC2(FUNC5(o, "[path]"));

	if (x == NULL)
	{
		FUNC3(o);
		c->Write(c, FUNC8("CMD_MSG_LOAD_CERT_FAILED"));
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC7(&t, sizeof(t));
	t.x = x;

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Success
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	FUNC4(x);

	// Release of the parameter list
	FUNC3(o);

	return ret;
}