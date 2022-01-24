#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_20__ {scalar_t__ NumTokens; char** Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {int /*<<< orphan*/  (* Write ) (TYPE_5__*,char*) ;} ;
struct TYPE_23__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_22__ {int /*<<< orphan*/  Rpc; } ;
struct TYPE_21__ {scalar_t__ FileData; int /*<<< orphan*/  FileName; } ;
typedef  TYPE_2__ RPC_CONFIG ;
typedef  TYPE_3__ PS ;
typedef  TYPE_4__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IO ;
typedef  TYPE_5__ CONSOLE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_5__*,char*,char*,TYPE_4__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int) ; 
 char* FUNC18 (scalar_t__) ; 
 char* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,char*) ; 

UINT FUNC25(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	PS *ps = (PS *)param;
	UINT ret = 0;
	RPC_CONFIG t;
	// Parameter list that can be specified
	PARAM args[] =
	{
		// "name", prompt_proc, prompt_param, eval_proc, eval_param
		{"[path]", NULL, NULL, NULL, NULL},
	};

	o = FUNC10(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC17(&t, sizeof(t));

	// RPC call
	ret = FUNC11(ps->Rpc, &t);

	if (ret != ERR_NO_ERROR)
	{
		// An error has occured
		FUNC1(c, ret);
		FUNC6(o);
		return ret;
	}
	else
	{
		wchar_t *filename = FUNC8(o, "[path]");

		if (FUNC9(filename))
		{
			// Display on the screen
			wchar_t tmp[MAX_SIZE];
			UINT buf_size;
			wchar_t *buf;
			UNI_TOKEN_LIST *lines;

			FUNC13(tmp, sizeof(tmp), FUNC19("CMD_ConfigGet_FILENAME"), t.FileName,
				FUNC12(t.FileData));
			c->Write(c, tmp);
			c->Write(c, L"");

			buf_size = FUNC0((BYTE *)t.FileData, FUNC12(t.FileData));
			buf = FUNC18(buf_size + 32);

			FUNC16(buf, buf_size, (BYTE *)t.FileData, FUNC12(t.FileData));

			lines = FUNC15(buf);
			if (lines != NULL)
			{
				UINT i;

				for (i = 0;i < lines->NumTokens;i++)
				{
					c->Write(c, lines->Token[i]);
				}

				FUNC14(lines);
			}

			c->Write(c, L"");

			FUNC5(buf);
		}
		else
		{
			// Save to the file
			IO *io = FUNC3(filename);

			if (io == NULL)
			{
				c->Write(c, FUNC19("CMD_ConfigGet_FILE_SAVE_FAILED"));

				ret = ERR_INTERNAL_ERROR;
			}
			else
			{
				FUNC4(io, t.FileData, FUNC12(t.FileData));
				FUNC2(io);
			}
		}
	}

	FUNC7(&t);

	FUNC6(o);

	return ret;
}