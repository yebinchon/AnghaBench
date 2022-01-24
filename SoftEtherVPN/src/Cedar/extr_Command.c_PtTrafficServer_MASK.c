#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  args ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  (* ReadLine ) (TYPE_3__*,char*,int) ;int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {char* member_0; int /*<<< orphan*/ * member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
struct TYPE_13__ {scalar_t__ ErrorCode; } ;
typedef  TYPE_1__ TTS ;
typedef  TYPE_2__ PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC6 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  PtTrafficPrintProc ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ TRAFFIC_DEFAULT_PORT ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,int) ; 

UINT FUNC12(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	LIST *o;
	UINT ret = ERR_NO_ERROR;
	UINT port;
	bool nohup;
	TTS *tts;
	PARAM args[] =
	{
		{"[port]", NULL, NULL, NULL, NULL},
		{"NOHUP", NULL, NULL, NULL, NULL},
	};

	// Get the parameter list
	o = FUNC7(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	port = FUNC4(o, "[port]");
	if (port == 0)
	{
		port = TRAFFIC_DEFAULT_PORT;
	}

	nohup = FUNC5(o, "nohup");

	tts = FUNC6(port, c, PtTrafficPrintProc);

	if (nohup)
	{
		while (true)
		{
			FUNC8(10000);
		}
	}

	c->Write(c, FUNC9("TTS_ENTER_TO_EXIT"));

	FUNC1(c->ReadLine(c, L"", true));

	ret = tts->ErrorCode;

	FUNC3(tts);

	if (ret != ERR_NO_ERROR)
	{
		FUNC0(c, ret);
	}

	// Release of the parameter list
	FUNC2(o);

	return ret;
}