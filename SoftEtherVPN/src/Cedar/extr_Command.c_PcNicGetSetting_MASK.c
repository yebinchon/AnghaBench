#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_8__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_7__ {int /*<<< orphan*/  Guid; int /*<<< orphan*/  FileName; int /*<<< orphan*/  Version; int /*<<< orphan*/  MacAddress; scalar_t__ Enabled; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_VLAN ;
typedef  TYPE_2__ PC ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_VLAN t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, *FUNC11("CMD_NicCreate_PROMPT_NAME"), &CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC10(&t, sizeof(t));
	FUNC8(t.DeviceName, sizeof(t.DeviceName), FUNC6(o, "[name]"));

	ret = FUNC0(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		// Success
		CT *ct = FUNC4();
		wchar_t tmp[MAX_SIZE];

		FUNC9(tmp, sizeof(tmp), t.DeviceName);
		FUNC3(ct, FUNC11("CMD_NicGetSetting_1"), tmp);

		FUNC3(ct, FUNC11("CMD_NicGetSetting_2"), t.Enabled ? FUNC11("CMD_MSG_ENABLE") : FUNC11("CMD_MSG_DISABLE"));

		FUNC9(tmp, sizeof(tmp), t.MacAddress);
		FUNC3(ct, FUNC11("CMD_NicGetSetting_3"), tmp);

		FUNC9(tmp, sizeof(tmp), t.Version);
		FUNC3(ct, FUNC11("CMD_NicGetSetting_4"), tmp);

		FUNC9(tmp, sizeof(tmp), t.FileName);
		FUNC3(ct, FUNC11("CMD_NicGetSetting_5"), tmp);

		FUNC9(tmp, sizeof(tmp), t.Guid);
		FUNC3(ct, FUNC11("CMD_NicGetSetting_6"), tmp);

		FUNC2(ct, c);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	// Release of the parameter list
	FUNC5(o);

	return ret;
}