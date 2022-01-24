#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_21__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_20__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_19__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_18__ {TYPE_1__* ClientOption; } ;
struct TYPE_17__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_3__ PC ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  CmdEvalIsFile ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ *) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	BUF *b;
	wchar_t name[MAX_SIZE];
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[path]", &CmdPrompt, *FUNC13("CMD_AccountImport_PROMPT_PATH"), &CmdEvalIsFile, NULL},
	};

	// Get the parameter list
	o = FUNC9(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// Read the file
	b = FUNC10(FUNC8(o, "[path]"));

	if (b == NULL)
	{
		// Read failure
		c->Write(c, FUNC13("CMD_LOADFILE_FAILED"));
		ret = ERR_INTERNAL_ERROR;
	}
	else
	{
		RPC_CLIENT_CREATE_ACCOUNT *t;

		t = FUNC1(b);

		if (t == NULL)
		{
			// Failed to parse
			c->Write(c, FUNC13("CMD_AccountImport_FAILED_PARSE"));
			ret = ERR_INTERNAL_ERROR;
		}
		else
		{
			FUNC3(pc->RemoteClient, name, sizeof(name), t->ClientOption->AccountName);
			FUNC12(t->ClientOption->AccountName, sizeof(t->ClientOption->AccountName), name);

			ret = FUNC0(pc->RemoteClient, t);

			if (ret == ERR_NO_ERROR)
			{
				wchar_t tmp[MAX_SIZE];

				FUNC11(tmp, sizeof(tmp), FUNC13("CMD_AccountImport_OK"), name);
				c->Write(c, tmp);
			}

			FUNC2(t);
			FUNC5(t);
		}

		FUNC6(b);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC4(c, ret);
	}

	// Release of the parameter list
	FUNC7(o);

	return ret;
}