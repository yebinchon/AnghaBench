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
struct TYPE_9__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_8__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_7__ {int ServerVer; int ClientVer; int /*<<< orphan*/  ClientBuild; int /*<<< orphan*/  ClientStr; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Type; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_CONNECTION_INFO ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

UINT FUNC18(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CONNECTION_INFO t;
	CT *ct;
	wchar_t tmp[MAX_SIZE];
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC17("CMD_ConnectionGet_PROMPT_NAME"), CmdEvalNotEmpty, NULL},
	};

	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));

	FUNC10(t.Name, sizeof(t.Name), FUNC7(o, "[name]"));

	// RPC call
	ret = FUNC9(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		ct = FUNC3();

		FUNC12(tmp, sizeof(tmp), t.Name);
		FUNC2(ct, FUNC17("SM_CONNINFO_NAME"), tmp);

		FUNC2(ct, FUNC17("SM_CONNINFO_TYPE"), FUNC5(t.Type));

		FUNC12(tmp, sizeof(tmp), t.Hostname);
		FUNC2(ct, FUNC17("SM_CONNINFO_HOSTNAME"), tmp);

		FUNC15(tmp, t.Port);
		FUNC2(ct, FUNC17("SM_CONNINFO_PORT"), tmp);

		FUNC6(tmp, sizeof(tmp), FUNC13(t.ConnectedTime), NULL);
		FUNC2(ct, FUNC17("SM_CONNINFO_TIME"), tmp);

		FUNC12(tmp, sizeof(tmp), t.ServerStr);
		FUNC2(ct, FUNC17("SM_CONNINFO_SERVER_STR"), tmp);

		FUNC14(tmp, sizeof(tmp), L"%u.%02u", t.ServerVer / 100, t.ServerVer % 100);
		FUNC2(ct, FUNC17("SM_CONNINFO_SERVER_VER"), tmp);

		FUNC15(tmp, t.ServerBuild);
		FUNC2(ct, FUNC17("SM_CONNINFO_SERVER_BUILD"), tmp);

		if (FUNC11(t.ClientStr) != 0)
		{
			FUNC12(tmp, sizeof(tmp), t.ClientStr);
			FUNC2(ct, FUNC17("SM_CONNINFO_CLIENT_STR"), tmp);

			FUNC14(tmp, sizeof(tmp), L"%u.%02u", t.ClientVer / 100, t.ClientVer % 100);
			FUNC2(ct, FUNC17("SM_CONNINFO_CLIENT_VER"), tmp);

			FUNC15(tmp, t.ClientBuild);
			FUNC2(ct, FUNC17("SM_CONNINFO_CLIENT_BUILD"), tmp);
		}

		FUNC1(ct, c);
	}

	FUNC4(o);

	return 0;
}