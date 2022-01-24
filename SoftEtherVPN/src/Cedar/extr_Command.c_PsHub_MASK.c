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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/ * HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_13__ {int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_HUB_STATUS ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ *) ; 

UINT FUNC14(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_HUB_STATUS t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", NULL, NULL, NULL, NULL},
	};

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC5(FUNC4(o, "[name]")) == false)
	{
		wchar_t tmp[MAX_SIZE];
		FUNC10(&t, sizeof(t));

		// Examine whether the specified Virtual HUB is accessible
		FUNC8(t.HubName, sizeof(t.HubName), FUNC4(o, "[name]"));

		// RPC call
		ret = FUNC7(ps->Rpc, &t);

		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC3(o);
			return ret;
		}

		// Change the selection
		if (ps->HubName != NULL)
		{
			FUNC2(ps->HubName);
		}
		ps->HubName = FUNC1(t.HubName);

		FUNC9(tmp, sizeof(tmp), FUNC11("CMD_Hub_Selected"), t.HubName);
		c->Write(c, tmp);
	}
	else
	{
		// Deselect
		if (ps->HubName != NULL)
		{
			c->Write(c, FUNC11("CMD_Hub_Unselected"));
			FUNC2(ps->HubName);
		}
		ps->HubName = NULL;
	}

	FUNC3(o);

	return 0;
}