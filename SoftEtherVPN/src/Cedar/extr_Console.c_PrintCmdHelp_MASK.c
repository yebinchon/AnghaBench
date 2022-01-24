#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_23__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int UINT ;
struct TYPE_25__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_24__ {int NumTokens; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,char**,char**) ; 
 int FUNC2 (TYPE_3__*) ; 
 int MAX_SIZE ; 
 char* FUNC3 (char,int) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,char*) ; 

void FUNC22(CONSOLE *c, char *cmd_name, TOKEN_LIST *param_list)
{
	wchar_t tmp[MAX_SIZE];
	wchar_t *buf;
	UINT buf_size;
	wchar_t *description, *args, *help;
	UNI_TOKEN_LIST *t;
	UINT width;
	UINT i;
	char *space;
	// Validate arguments
	if (c == NULL || cmd_name == NULL || param_list == NULL)
	{
		return;
	}

	width = FUNC2(c) - 2;

	buf_size = sizeof(wchar_t) * (width + 32);
	buf = FUNC4(buf_size);

	FUNC1(cmd_name, &description, &args, &help);

	space = FUNC3(' ', 2);

	// Title
	FUNC7(tmp, sizeof(tmp), FUNC9("CMD_HELP_TITLE"), cmd_name);
	c->Write(c, tmp);
	c->Write(c, L"");

	// Purpose
	c->Write(c, FUNC9("CMD_HELP_DESCRIPTION"));
	t = FUNC6(description, width - 2);
	for (i = 0;i < t->NumTokens;i++)
	{
		FUNC7(buf, buf_size, L"%S%s", space, t->Token[i]);
		c->Write(c, buf);
	}
	FUNC8(t);
	c->Write(c, L"");

	// Description
	c->Write(c, FUNC9("CMD_HELP_HELP"));
	t = FUNC6(help, width - 2);
	for (i = 0;i < t->NumTokens;i++)
	{
		FUNC7(buf, buf_size, L"%S%s", space, t->Token[i]);
		c->Write(c, buf);
	}
	FUNC8(t);
	c->Write(c, L"");

	// Usage
	c->Write(c, FUNC9("CMD_HELP_USAGE"));
	t = FUNC6(args, width - 2);
	for (i = 0;i < t->NumTokens;i++)
	{
		FUNC7(buf, buf_size, L"%S%s", space, t->Token[i]);
		c->Write(c, buf);
	}
	FUNC8(t);

	// Arguments
	if (param_list->NumTokens >= 1)
	{
		c->Write(c, L"");
		c->Write(c, FUNC9("CMD_HELP_ARGS"));
		FUNC5(c, cmd_name, param_list, 2);
	}

	FUNC0(space);

	FUNC0(buf);
}