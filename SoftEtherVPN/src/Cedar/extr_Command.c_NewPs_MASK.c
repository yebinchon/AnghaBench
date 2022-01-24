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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int ConsoleForServer; int /*<<< orphan*/  CmdLine; void* AdminHub; scalar_t__ LastError; void* HubName; int /*<<< orphan*/ * Rpc; int /*<<< orphan*/ * Console; void* ServerName; int /*<<< orphan*/  ServerPort; } ;
typedef  int /*<<< orphan*/  RPC ;
typedef  TYPE_1__ PS ;
typedef  int /*<<< orphan*/  CONSOLE ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 

PS *FUNC5(CONSOLE *c, RPC *rpc, char *servername, UINT serverport, char *hubname, char *adminhub, wchar_t *cmdline)
{
	PS *ps;
	// Validate arguments
	if (c == NULL || rpc == NULL || servername == NULL)
	{
		return NULL;
	}

	if (FUNC2(hubname))
	{
		hubname = NULL;
	}
	if (FUNC2(adminhub))
	{
		adminhub = NULL;
	}
	if (FUNC3(cmdline))
	{
		cmdline = NULL;
	}

	ps = FUNC4(sizeof(PS));
	ps->ConsoleForServer = true;
	ps->ServerPort = serverport;
	ps->ServerName = FUNC0(servername);
	ps->Console = c;
	ps->Rpc = rpc;
	ps->HubName = FUNC0(hubname);
	ps->LastError = 0;
	ps->AdminHub = FUNC0(adminhub);
	ps->CmdLine = FUNC1(cmdline);

	return ps;
}