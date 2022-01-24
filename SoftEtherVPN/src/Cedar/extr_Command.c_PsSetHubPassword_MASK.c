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
typedef  scalar_t__ UINT ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_14__ {int /*<<< orphan*/  Rpc; int /*<<< orphan*/ * HubName; } ;
struct TYPE_13__ {int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  SecurePassword; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_CREATE_HUB ;
typedef  TYPE_2__ PS ;
typedef  TYPE_3__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_4__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  ADMINISTRATOR_USERNAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPromptChoosePassword ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ) ; 

UINT FUNC13(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CREATE_HUB t;
	char *pw;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[password]", &CmdPromptChoosePassword, NULL, NULL, NULL},
	};

	// If virtual HUB is not selected, it's an error
	if (ps->HubName == NULL)
	{
		c->Write(c, FUNC11("CMD_Hub_Not_Selected"));
		return ERR_INVALID_PARAMETER;
	}

	o = FUNC4(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// Get current settings of Virtual HUB
	FUNC10(&t, sizeof(t));
	FUNC8(t.HubName, sizeof(t.HubName), ps->HubName);
	ret = FUNC5(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	// Change the settings
	pw = FUNC2(o, "[password]");
	FUNC3(t.SecurePassword, ADMINISTRATOR_USERNAME, pw);
	FUNC7(t.HashedPassword, pw, FUNC9(pw));

	// Write the configuration of Virtual HUB
	ret = FUNC6(ps->Rpc, &t);
	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC0(c, ret);
		FUNC1(o);
		return ret;
	}

	FUNC1(o);

	return 0;
}