#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  prompt ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_13__ {scalar_t__ RetCode; scalar_t__ ConsoleType; int /*<<< orphan*/  (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_12__ {char* member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_11__ {scalar_t__ LastError; int /*<<< orphan*/ * CmdLine; TYPE_3__* Console; } ;
typedef  TYPE_1__ PT ;
typedef  TYPE_2__ CMD ;

/* Variables and functions */
 scalar_t__ CONSOLE_CSV ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,char*,TYPE_2__*,int,TYPE_1__*) ; 
 scalar_t__ ERR_NO_ERROR ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  PsAbout ; 
 int /*<<< orphan*/  PtCheck ; 
 int /*<<< orphan*/  PtMakeCert ; 
 int /*<<< orphan*/  PtMakeCert2048 ; 
 int /*<<< orphan*/  PtTrafficClient ; 
 int /*<<< orphan*/  PtTrafficServer ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 

void FUNC8(PT *pt)
{
	char prompt[MAX_SIZE];
	wchar_t tmp[MAX_SIZE];
	// Validate arguments
	if (pt == NULL)
	{
		return;
	}

	// Display a message that start-up is complete
	FUNC2(tmp, sizeof(tmp), FUNC3("CMD_VPNCMD_TOOLS_CONNECTED"));
	pt->Console->Write(pt->Console, tmp);
	pt->Console->Write(pt->Console, L"");

	while (true)
	{
		// Definition of command
		CMD cmd[] =
		{
			{"About", PsAbout},
			{"MakeCert", PtMakeCert},
			{"MakeCert2048", PtMakeCert2048},
			{"TrafficClient", PtTrafficClient},
			{"TrafficServer", PtTrafficServer},
			{"Check", PtCheck},
		};

		// Generate a prompt
		FUNC1(prompt, sizeof(prompt), "VPN Tools>");

		if (FUNC0(pt->Console, pt->CmdLine, prompt, cmd, sizeof(cmd) / sizeof(cmd[0]), pt) == false)
		{
			break;
		}
		pt->LastError = pt->Console->RetCode;

		if (pt->LastError == ERR_NO_ERROR && pt->Console->ConsoleType != CONSOLE_CSV)
		{
			pt->Console->Write(pt->Console, FUNC3("CMD_MSG_OK"));
			pt->Console->Write(pt->Console, L"");
		}

		if (pt->CmdLine != NULL)
		{
			break;
		}
	}
}