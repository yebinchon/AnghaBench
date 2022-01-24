#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {char* HubName; int /*<<< orphan*/  Rpc; } ;
struct TYPE_18__ {TYPE_1__* ClientAuth; TYPE_8__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_17__ {int /*<<< orphan*/  PlainPassword; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  Username; int /*<<< orphan*/  HashedPassword; } ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_AUTHTYPE_PASSWORD ; 
 int /*<<< orphan*/  CLIENT_AUTHTYPE_PLAIN_PASSWORD ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int /*<<< orphan*/  CmdPromptChoosePassword ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 TYPE_8__* FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ *) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_LINK t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC14("CMD_CascadeCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"PASSWORD", &CmdPromptChoosePassword, NULL, NULL, NULL},
		{"TYPE", &CmdPrompt, FUNC14("CMD_CascadePasswordSet_Prompt_Type"), CmdEvalNotEmpty, NULL},
	};
	
	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC14("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC6(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC12(&t, sizeof(t));
	FUNC10(t.HubName, sizeof(t.HubName), ps->HubName);
	t.ClientOption = FUNC13(sizeof(CLIENT_OPTION));
	FUNC11(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), FUNC4(o, "[name]"));

	// RPC call
	ret = FUNC7(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}
	else
	{
		// Change the settings for the cascade connection
		char *typestr = FUNC3(o, "TYPE");

		if (FUNC9("standard", typestr))
		{
			t.ClientAuth->AuthType = CLIENT_AUTHTYPE_PASSWORD;
			FUNC5(t.ClientAuth->HashedPassword, t.ClientAuth->Username,
				FUNC3(o, "PASSWORD"));
		}
		else if (FUNC9("radius", typestr) || FUNC9("ntdomain", typestr))
		{
			t.ClientAuth->AuthType = CLIENT_AUTHTYPE_PLAIN_PASSWORD;

			FUNC10(t.ClientAuth->PlainPassword, sizeof(t.ClientAuth->PlainPassword),
				FUNC3(o, "PASSWORD"));
		}
		else
		{
			// An error has occured
			c->Write(c, FUNC14("CMD_CascadePasswordSet_Type_Invalid"));
			FUNC2(&t);
			ret = ERR_INVALID_PARAMETER;
			FUNC0(c, ret);
			FUNC1(o);
			return ERR_INTERNAL_ERROR;
		}

		ret = FUNC8(ps->Rpc, &t);
		if (ret != ERR_NO_ERROR)
		{
			// An error has occured
			FUNC0(c, ret);
			FUNC1(o);
			return ret;
		}

		FUNC2(&t);
	}

	FUNC1(o);

	return 0;
}