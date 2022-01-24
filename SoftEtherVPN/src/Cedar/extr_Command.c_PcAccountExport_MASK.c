#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  bom ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
struct TYPE_26__ {int* Buf; int Size; } ;
struct TYPE_25__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_24__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_23__ {int /*<<< orphan*/  RemoteClient; } ;
struct TYPE_22__ {int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  ClientOption; int /*<<< orphan*/  ClientAuth; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef  TYPE_1__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef  TYPE_3__ PC ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_5__ CONSOLE ;
typedef  TYPE_6__ BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_6__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  CmdPrompt ; 
 int FUNC5 (TYPE_6__*,char*) ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int MAX_SIZE ; 
 TYPE_6__* FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_5__*,char*,int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*,int*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int* FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ ) ; 

UINT FUNC23(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PC *pc = (PC *)param;
	UINT ret = ERR_NO_ERROR;
	RPC_CLIENT_GET_ACCOUNT t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		{"[name]", &CmdPrompt, FUNC21("CMD_AccountCreate_Prompt_Name"), CmdEvalNotEmpty, NULL},
		{"SAVEPATH", &CmdPrompt, FUNC21("CMD_AccountExport_PROMPT_SAVEPATH"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC12(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// RPC call
	FUNC19(&t, sizeof(t));

	FUNC16(t.AccountName, sizeof(t.AccountName), FUNC10(o, "[name]"));

	ret = FUNC1(pc->RemoteClient, &t);

	if (ret == ERR_NO_ERROR)
	{
		RPC_CLIENT_CREATE_ACCOUNT z;
		BUF *b;
		BUF *b2;
		char tmp[MAX_SIZE];
		UCHAR *buf;
		UINT buf_size;
		UCHAR bom[] = {0xef, 0xbb, 0xbf, };

		FUNC19(&z, sizeof(z));
		z.CheckServerCert = t.CheckServerCert;
		z.ClientAuth = t.ClientAuth;
		z.ClientOption = t.ClientOption;
		z.ServerCert = t.ServerCert;
		z.StartupAccount = t.StartupAccount;

		b = FUNC2(&z);

		FUNC14(tmp, sizeof(tmp), FUNC9(o, "SAVEPATH"));
		b2 = FUNC11();

		FUNC18(b2, bom, sizeof(bom));

		// Add the header part
		buf_size = FUNC0(FUNC21("CM_ACCOUNT_FILE_BANNER"));
		buf = FUNC20(buf_size + 32);
		FUNC17(buf, buf_size, FUNC21("CM_ACCOUNT_FILE_BANNER"));

		FUNC18(b2, buf, FUNC15((char *)buf));
		FUNC18(b2, b->Buf, b->Size);
		FUNC13(b2, 0, 0);

		FUNC7(b);

		if (FUNC5(b2, tmp) == false)
		{
			c->Write(c, FUNC21("CMD_SAVEFILE_FAILED"));
			ret = ERR_INTERNAL_ERROR;
		}

		FUNC7(b2);
		FUNC6(buf);
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC4(c, ret);
	}

	FUNC3(&t);

	// Release of the parameter list
	FUNC8(o);

	return ret;
}