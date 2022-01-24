#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  X_SERIAL ;
typedef  int /*<<< orphan*/  X ;
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_17__ {char* member_0; int member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* Write ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {char* member_0; TYPE_3__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ PARAM ;
typedef  int /*<<< orphan*/  NAME ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  K ;
typedef  TYPE_2__ CONSOLE ;
typedef  TYPE_3__ CMD_EVAL_MIN_MAX ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * CmdEvalIsFile ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_2__*,char*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 TYPE_4__* FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,int /*<<< orphan*/ *) ; 

UINT FUNC28(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	UINT ret = ERR_NO_ERROR;
	X *x = NULL;
	K *pub = NULL;
	K *pri = NULL;
	NAME *n;
	X_SERIAL *x_serial = NULL;
	BUF *buf;
	UINT days;
	X *root_x = NULL;
	K *root_k = NULL;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_MakeCert_EVAL_EXPIRES",
		0,
		10950,
	};
	PARAM args[] =
	{
		{"CN", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_CN"), NULL, NULL},
		{"O", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_O"), NULL, NULL},
		{"OU", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_OU"), NULL, NULL},
		{"C", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_C"), NULL, NULL},
		{"ST", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_ST"), NULL, NULL},
		{"L", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_L"), NULL, NULL},
		{"SERIAL", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_SERIAL"), NULL, NULL},
		{"EXPIRES", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_EXPIRES"), CmdEvalMinMax, &minmax},
		{"SIGNCERT", NULL, NULL, CmdEvalIsFile, NULL},
		{"SIGNKEY", NULL, NULL, CmdEvalIsFile, NULL},
		{"SAVECERT", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_SAVECERT"), CmdEvalNotEmpty, NULL},
		{"SAVEKEY", CmdPrompt, FUNC23("CMD_MakeCert_PROMPT_SAVEKEY"), CmdEvalNotEmpty, NULL},
	};

	// Get the parameter list
	o = FUNC19(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC13(FUNC11(o, "SIGNCERT")) == false && FUNC13(FUNC11(o, "SIGNKEY")) == false)
	{
		root_x = FUNC3(FUNC12(o, "SIGNCERT"));
		root_k = FUNC2(FUNC12(o, "SIGNKEY"), true, NULL);

		if (root_x == NULL || root_k == NULL || FUNC0(root_x, root_k) == false)
		{
			ret = ERR_INTERNAL_ERROR;

			c->Write(c, FUNC23("CMD_MakeCert_ERROR_SIGNKEY"));
		}
	}

	if (ret == ERR_NO_ERROR)
	{
		buf = FUNC21(FUNC11(o, "SERIAL"));
		if (buf != NULL && buf->Size >= 1)
		{
			x_serial = FUNC18(buf->Buf, buf->Size);
		}
		FUNC4(buf);

		n = FUNC15(FUNC12(o, "CN"), FUNC12(o, "O"), FUNC12(o, "OU"), 
			FUNC12(o, "C"), FUNC12(o, "ST"), FUNC12(o, "L"));

		days = FUNC10(o, "EXPIRES");
		if (days == 0)
		{
			days = 3650;
		}

		FUNC20(&pri, &pub, 1024);

		if (root_x == NULL)
		{
			x = FUNC16(pub, pri, n, days, x_serial);
		}
		else
		{
			x = FUNC17(pub, root_k, root_x, n, days, x_serial);
		}

		FUNC9(x_serial);
		FUNC6(n);

		if (x == NULL)
		{
			ret = ERR_INTERNAL_ERROR;
			c->Write(c, FUNC23("CMD_MakeCert_ERROR_GEN_FAILED"));
		}
		else
		{
			if (FUNC22(x, FUNC12(o, "SAVECERT"), true) == false)
			{
				c->Write(c, FUNC23("CMD_SAVECERT_FAILED"));
			}
			else if (FUNC14(pri, FUNC12(o, "SAVEKEY"), true, NULL) == false)
			{
				c->Write(c, FUNC23("CMD_SAVEKEY_FAILED"));
			}
		}
	}

	if (ret != ERR_NO_ERROR)
	{
		// Error has occurred
		FUNC1(c, ret);
	}

	// Release of the parameter list
	FUNC7(o);

	FUNC8(root_x);
	FUNC5(root_k);

	FUNC8(x);
	FUNC5(pri);
	FUNC5(pub);

	return ret;
}