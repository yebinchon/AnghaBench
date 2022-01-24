#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int ConsoleForServer; int /*<<< orphan*/  CmdLine; int /*<<< orphan*/ * RemoteClient; scalar_t__ LastError; int /*<<< orphan*/ * Console; int /*<<< orphan*/  ServerName; } ;
typedef  int /*<<< orphan*/  REMOTE_CLIENT ;
typedef  TYPE_1__ PC ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 

PC *FUNC4(CONSOLE *c, REMOTE_CLIENT *remote_client, char *servername, wchar_t *cmdline)
{
	PC *pc;
	// Validate arguments
	if (c == NULL || remote_client == NULL || servername == NULL)
	{
		return NULL;
	}
	if (FUNC2(cmdline))
	{
		cmdline = NULL;
	}

	pc = FUNC3(sizeof(PC));
	pc->ConsoleForServer = false;
	pc->ServerName = FUNC0(servername);
	pc->Console = c;
	pc->LastError = 0;
	pc->RemoteClient = remote_client;
	pc->CmdLine = FUNC1(cmdline);

	return pc;
}