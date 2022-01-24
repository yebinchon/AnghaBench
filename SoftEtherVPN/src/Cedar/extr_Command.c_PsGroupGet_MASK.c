#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  groupname ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_29__ {int /*<<< orphan*/  (* Write ) (TYPE_6__*,char*) ;} ;
struct TYPE_28__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; } ;
struct TYPE_27__ {char* HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_26__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  GroupName; } ;
struct TYPE_25__ {char* HubName; char* Name; char* Realname; char* Note; scalar_t__ NumUser; TYPE_2__* Users; int /*<<< orphan*/ * Policy; } ;
typedef  TYPE_1__ RPC_SET_GROUP ;
typedef  TYPE_2__ RPC_ENUM_USER_ITEM ;
typedef  TYPE_1__ RPC_ENUM_USER ;
typedef  TYPE_4__ PS ;
typedef  TYPE_5__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  TYPE_6__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_6__*,char*,char*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 char* FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_6__*,char*) ; 

UINT FUNC25(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_SET_GROUP t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", CmdPrompt, FUNC17("CMD_GroupCreate_Prompt_NAME"), CmdEvalNotEmpty, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC17("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC16(&t, sizeof(t));
	FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);
	FUNC13(t.Name, sizeof(t.Name), FUNC7(o, "[name]"));

	// RPC call
	ret = FUNC11(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC4(o);
		return ret;
	}
	else
	{
		wchar_t tmp[MAX_SIZE];
		char groupname[MAX_USERNAME_LEN + 1];
		CT *ct = FUNC3();

		FUNC13(groupname, sizeof(groupname), t.Name);

		FUNC14(tmp, sizeof(tmp), t.Name);
		FUNC2(ct, FUNC17("CMD_GroupGet_Column_NAME"), tmp);
		FUNC2(ct, FUNC17("CMD_GroupGet_Column_REALNAME"), t.Realname);
		FUNC2(ct, FUNC17("CMD_GroupGet_Column_NOTE"), t.Note);

		FUNC1(ct, c);

		if (t.Policy != NULL)
		{
			c->Write(c, L"");
			c->Write(c, FUNC17("CMD_GroupGet_Column_POLICY"));

			FUNC9(c, t.Policy, false);
		}

		{
			RPC_ENUM_USER t;
			bool b = false;

			FUNC16(&t, sizeof(t));

			FUNC13(t.HubName, sizeof(t.HubName), ps->HubName);

			if (FUNC10(ps->Rpc, &t) == ERR_NO_ERROR)
			{
				UINT i;

				for (i = 0;i < t.NumUser;i++)
				{
					RPC_ENUM_USER_ITEM *u = &t.Users[i];

					if (FUNC12(u->GroupName, groupname) == 0)
					{
						if (b == false)
						{
							b = true;
							c->Write(c, L"");
							c->Write(c, FUNC17("CMD_GroupGet_Column_MEMBERS"));
						}

						FUNC15(tmp, sizeof(tmp), L" %S", u->Name);
						c->Write(c, tmp);
					}
				}
				FUNC5(&t);

				if (b)
				{
					c->Write(c, L"");
				}
			}
		}

	}

	FUNC6(&t);

	FUNC4(o);

	return 0;
}