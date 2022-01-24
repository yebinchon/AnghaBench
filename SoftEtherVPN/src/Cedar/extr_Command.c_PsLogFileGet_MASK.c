#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_21__ {int /*<<< orphan*/  Size; scalar_t__ Buf; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_19__ {char* member_0; char* member_2; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_1; } ;
struct TYPE_18__ {int /*<<< orphan*/  Rpc; } ;
typedef  TYPE_1__ PS ;
typedef  TYPE_2__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_4__*,char*) ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,char*,char*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (scalar_t__) ; 
 char* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*) ; 

UINT FUNC20(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	BUF *buf;
	char *filename = NULL;
	char *server_name;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[name]", CmdPrompt, FUNC12("CMD_LogFileGet_PROMPT_NAME"), CmdEvalNotEmpty, NULL},
		{"SERVER", NULL, NULL, NULL, NULL},
		{"SAVEPATH", NULL, NULL, NULL, NULL},
	};

	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	filename = FUNC6(o, "SAVE");
	if (FUNC7(filename))
	{
		filename = FUNC6(o, "SAVEPATH");
	}

	c->Write(c, FUNC12("CMD_LogFileGet_START"));

	server_name = FUNC6(o, "SERVER");

	buf = FUNC1(ps->Rpc, server_name,
		FUNC6(o, "[name]"), 0, NULL, NULL);

	if (buf == NULL)
	{
		c->Write(c, FUNC12("CMD_LogFileGet_FAILED"));

		ret = ERR_INTERNAL_ERROR;
	}
	else
	{
		if (FUNC7(filename) == false)
		{
			// Save to the file
			if (FUNC2(buf, filename) == false)
			{
				ret = ERR_INTERNAL_ERROR;
				c->Write(c, FUNC12("CMD_LogFileGet_SAVE_FAILED"));
			}
		}
		else
		{
			// Display on the screen
			wchar_t tmp[MAX_SIZE];
			UINT buf_size;
			wchar_t *uni_buf;

			FUNC9(tmp, sizeof(tmp), FUNC12("CMD_LogFileGet_FILESIZE"),
				buf->Size);
			c->Write(c, tmp);
			c->Write(c, L"");

			buf_size = FUNC0((BYTE *)buf->Buf, buf->Size);
			uni_buf = FUNC11(buf_size + 32);

			FUNC10(uni_buf, buf_size, (BYTE *)buf->Buf, buf->Size);

			c->Write(c, uni_buf);
			c->Write(c, L"");

			FUNC3(uni_buf);
		}

		FUNC4(buf);
	}

	FUNC5(o);

	return ret;
}