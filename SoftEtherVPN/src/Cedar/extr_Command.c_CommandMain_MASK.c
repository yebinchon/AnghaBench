#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {char* member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_7__ {int ProgrammingMode; int /*<<< orphan*/  (* Free ) (TYPE_1__*) ;int /*<<< orphan*/  RetCode; int /*<<< orphan*/  ConsoleType; } ;
typedef  TYPE_1__ CONSOLE ;
typedef  TYPE_2__ CMD ;

/* Variables and functions */
 int /*<<< orphan*/  CONSOLE_CSV ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*,char*,char*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  VpnCmdProc ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

UINT FUNC8(wchar_t *command_line)
{
	UINT ret = 0;
	wchar_t *infile, *outfile;
	char *a_infile, *a_outfile;
	wchar_t *csvmode;
	wchar_t *programming_mode;
	CONSOLE *c;

	// Validate arguments
	if (command_line == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	// Look ahead only items of /in and /out
	infile = FUNC4(command_line, L"in");
	outfile = FUNC4(command_line, L"out");
	if (FUNC6(infile))
	{
		FUNC2(infile);
		infile = NULL;
	}
	if (FUNC6(outfile))
	{
		FUNC2(outfile);
		outfile = NULL;
	}

	a_infile = FUNC0(infile);
	a_outfile = FUNC0(outfile);

	// Allocate the local console
	c = FUNC3(infile, outfile);
	if (c != NULL)
	{
		// Definition of commands of vpncmd
		CMD cmd[] =
		{
			{"vpncmd", VpnCmdProc},
		};

		// Read ahead to check the CSV mode
		csvmode = FUNC4(command_line, L"csv");
		if(csvmode != NULL)
		{
			FUNC2(csvmode);
			c->ConsoleType = CONSOLE_CSV;
		}

		programming_mode = FUNC4(command_line, L"programming");
		if (programming_mode != NULL)
		{
			FUNC2(programming_mode);
			c->ProgrammingMode = true;
		}

		if (FUNC1(c, command_line, ">", cmd, sizeof(cmd) / sizeof(cmd[0]), NULL) == false)
		{
			ret = ERR_INVALID_PARAMETER;
		}
		else
		{
			ret = c->RetCode;
		}

		// Release the local console
		c->Free(c);
	}
	else
	{
		FUNC5("Error: Couldn't open local console.\n");
	}

	FUNC2(a_infile);
	FUNC2(a_outfile);
	FUNC2(infile);
	FUNC2(outfile);

	return ret;
}