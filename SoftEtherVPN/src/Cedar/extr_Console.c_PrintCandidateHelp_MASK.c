#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_10__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int UINT ;
struct TYPE_12__ {int /*<<< orphan*/  (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_11__ {int NumTokens; char** Token; } ;
typedef  TYPE_2__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * CompareCandidateStr ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char**) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int) ; 
 char* FUNC9 (char,int) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int FUNC15 (char*) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,char*) ; 

void FUNC20(CONSOLE *c, char *cmd_name, TOKEN_LIST *candidate_list, UINT left_space)
{
	UINT console_width;
	UINT max_keyword_width;
	LIST *o;
	UINT i;
	wchar_t *tmpbuf;
	UINT tmpbuf_size;
	char *left_space_array;
	char *max_space_array;
	// Validate arguments
	if (c == NULL || candidate_list == NULL)
	{
		return;
	}

	// Get the width of the screen
	console_width = FUNC4(c) - 1;

	tmpbuf_size = sizeof(wchar_t) * (console_width + 32);
	tmpbuf = FUNC10(tmpbuf_size);

	left_space_array = FUNC9(' ', left_space);

	// Sort and enlist the command name
	// no need to sort the parameter name
	o = FUNC11(cmd_name == NULL ? CompareCandidateStr : NULL);

	max_keyword_width = 0;

	for (i = 0;i < candidate_list->NumTokens;i++)
	{
		UINT keyword_width;

		// Get the width of each keyword
		FUNC5(o, candidate_list->Token[i]);

		keyword_width = FUNC16(candidate_list->Token[i]);
		if (cmd_name != NULL)
		{
			if (candidate_list->Token[i][0] != '[')
			{
				keyword_width += 1;
			}
			else
			{
				keyword_width -= 2;
			}
		}

		max_keyword_width = FUNC8(max_keyword_width, keyword_width);
	}

	max_space_array = FUNC9(' ', max_keyword_width);

	// Display the candidate
	for (i = 0;i < FUNC7(o);i++)
	{
		char tmp[128];
		char *name = FUNC6(o, i);
		UNI_TOKEN_LIST *t;
		wchar_t *help;
		UINT j;
		UINT keyword_start_width = left_space;
		UINT descript_start_width = left_space + max_keyword_width + 1;
		UINT descript_width;
		char *space;

		if (console_width >= (descript_start_width + 5))
		{
			descript_width = console_width - descript_start_width - 3;
		}
		else
		{
			descript_width = 2;
		}

		// Generate the name
		if (cmd_name != NULL && name[0] != '[')
		{
			// Prepend a "/" in the case of a parameter
			FUNC0(tmp, sizeof(tmp), "/%s", name);
		}
		else
		{
			// Use the characters as it is in the case of a command name
			if (cmd_name == NULL)
			{
				FUNC14(tmp, sizeof(tmp), name);
			}
			else
			{
				FUNC14(tmp, sizeof(tmp), name + 1);
				if (FUNC15(tmp) >= 1)
				{
					tmp[FUNC15(tmp) - 1] = 0;
				}
			}
		}

		// Get the help string
		if (cmd_name == NULL)
		{
			FUNC2(name, &help, NULL, NULL);
		}
		else
		{
			FUNC3(cmd_name, name, &help);
		}

		space = FUNC9(' ', max_keyword_width - FUNC16(name) - (cmd_name == NULL ? 0 : (name[0] != '[' ? 1 : -2)));

		t = FUNC13(help, descript_width);

		for (j = 0;j < t->NumTokens;j++)
		{
			if (j == 0)
			{
				FUNC17(tmpbuf, tmpbuf_size, L"%S%S%S - %s",
					left_space_array, tmp, space, t->Token[j]);
			}
			else
			{
				FUNC17(tmpbuf, tmpbuf_size, L"%S%S   %s",
					left_space_array, max_space_array, t->Token[j]);
			}

			c->Write(c, tmpbuf);
		}

		FUNC1(space);

		FUNC18(t);
	}

	FUNC12(o);

	FUNC1(max_space_array);
	FUNC1(tmpbuf);
	FUNC1(left_space_array);
}