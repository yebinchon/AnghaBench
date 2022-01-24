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
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp3 ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_11__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_10__ {scalar_t__ NumItem; TYPE_1__* Items; int /*<<< orphan*/  Name; } ;
struct TYPE_9__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; } ;
typedef  TYPE_1__ RPC_L3IF ;
typedef  TYPE_2__ RPC_ENUM_L3IF ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  CT ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

UINT FUNC15(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_ENUM_L3IF t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", &CmdPrompt, FUNC14("CMD_RouterIfList_PROMPT_NAME"), CmdEvalNotEmpty, NULL},
	};

	o = FUNC9(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC13(&t, sizeof(t));

	FUNC11(t.Name, sizeof(t.Name), FUNC7(o, "[name]"));

	// RPC call
	ret = FUNC10(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC5(o);
		return ret;
	}
	else
	{
		UINT i;
		wchar_t tmp1[MAX_SIZE];
		wchar_t tmp2[MAX_SIZE];
		wchar_t tmp3[MAX_SIZE];
		CT *ct = FUNC4();

		FUNC3(ct, FUNC14("SM_L3_SW_IF_COLUMN1"), false);
		FUNC3(ct, FUNC14("SM_L3_SW_IF_COLUMN2"), false);
		FUNC3(ct, FUNC14("SM_L3_SW_IF_COLUMN3"), false);

		for (i = 0;i < t.NumItem;i++)
		{
			RPC_L3IF *e = &t.Items[i];

			FUNC8(tmp1, sizeof(tmp1), e->IpAddress);
			FUNC8(tmp2, sizeof(tmp2), e->SubnetMask);
			FUNC12(tmp3, sizeof(tmp3), e->HubName);

			FUNC2(ct, tmp1, tmp2, tmp3);
		}


		FUNC1(ct, c);
	}

	FUNC6(&t);

	FUNC5(o);

	return 0;
}