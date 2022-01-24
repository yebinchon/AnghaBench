#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  result ;
typedef  int /*<<< orphan*/  args ;
typedef  unsigned long long UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_16__ {char* member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct TYPE_15__ {scalar_t__ ConsoleType; int /*<<< orphan*/ * Param; int /*<<< orphan*/  (* Write ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_14__ {int /*<<< orphan*/ * InBuf; } ;
struct TYPE_13__ {char* member_0; TYPE_4__* member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; } ;
typedef  int /*<<< orphan*/  TT_RESULT ;
typedef  int /*<<< orphan*/  TTC ;
typedef  TYPE_1__ PARAM ;
typedef  TYPE_2__ LOCAL_CONSOLE_PARAM ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ CONSOLE ;
typedef  TYPE_4__ CMD_EVAL_MIN_MAX ;

/* Variables and functions */
 scalar_t__ CONSOLE_LOCAL ; 
 int /*<<< orphan*/ * CmdEvalMinMax ; 
 int /*<<< orphan*/ * CmdEvalNotEmpty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * CmdPrompt ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,scalar_t__,scalar_t__,scalar_t__,unsigned long long,int,int,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,char*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC9 (char*,char**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PtTrafficPrintProc ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  TRAFFIC_DEFAULT_PORT ; 
 scalar_t__ TRAFFIC_NUMTCP_DEFAULT ; 
 int /*<<< orphan*/  TRAFFIC_NUMTCP_MAX ; 
 scalar_t__ TRAFFIC_SPAN_DEFAULT ; 
 scalar_t__ TRAFFIC_TYPE_DOWNLOAD ; 
 scalar_t__ TRAFFIC_TYPE_FULL ; 
 scalar_t__ TRAFFIC_TYPE_UPLOAD ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 

UINT FUNC17(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
	TTC *ttc;
	LIST *o;
	UINT ret = ERR_NO_ERROR;
	char *host = NULL;
	UINT port;
	UINT num, type;
	bool dbl = false, raw = false;
	UINT64 span;
	// Parameter list that can be specified
	CMD_EVAL_MIN_MAX minmax =
	{
		"CMD_TrafficClient_EVAL_NUMTCP",
		0, TRAFFIC_NUMTCP_MAX,
	};
	PARAM args[] =
	{
		{"[host:port]", CmdPrompt, FUNC14("CMD_TrafficClient_PROMPT_HOST"), CmdEvalNotEmpty, NULL},
		{"NUMTCP", NULL, NULL, CmdEvalMinMax, &minmax},
		{"TYPE", NULL, NULL, NULL, NULL},
		{"SPAN", NULL, NULL, NULL, NULL},
		{"DOUBLE", NULL, NULL, NULL, NULL},
		{"RAW", NULL, NULL, NULL, NULL},
	};

	// Get the parameter list
	o = FUNC8(c, cmd_name, str, args, sizeof(args) / sizeof(args[0]));
	if (o == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC9(FUNC5(o, "[host:port]"), &host, &port, TRAFFIC_DEFAULT_PORT) == false)
	{
		c->Write(c, FUNC14("CMD_TrafficClient_ERROR_HOSTPORT"));
		ret = ERR_INVALID_PARAMETER;
	}
	else
	{
		char *s;
		UINT i;

		FUNC11(host);

		num = FUNC4(o, "NUMTCP");
		if (num == 0)
		{
			num = TRAFFIC_NUMTCP_DEFAULT;
		}
		s = FUNC5(o, "TYPE");

		if (FUNC10("download", s))
		{
			type = TRAFFIC_TYPE_DOWNLOAD;
		}
		else if (FUNC10("upload", s))
		{
			type = TRAFFIC_TYPE_UPLOAD;
		}
		else
		{
			type = TRAFFIC_TYPE_FULL;
		}

		i = FUNC4(o, "SPAN");

		if (i == 0)
		{
			i = TRAFFIC_SPAN_DEFAULT;
		}

		span = (UINT64)i * 1000ULL;

		dbl = FUNC6(o, "DOUBLE");
		raw = FUNC6(o, "RAW");

		if (type == TRAFFIC_TYPE_FULL)
		{
			if ((num % 2) != 0)
			{
				ret = ERR_INVALID_PARAMETER;
				c->Write(c, FUNC14("CMD_TrafficClient_ERROR_NUMTCP"));
			}
		}

		if (ret == ERR_NO_ERROR)
		{
			TT_RESULT result;
			ttc = FUNC7(host, port, num, type, span, dbl, raw, PtTrafficPrintProc, c);

			if (c->ConsoleType == CONSOLE_LOCAL)
			{
				if (c->Param != NULL && (((LOCAL_CONSOLE_PARAM *)c->Param)->InBuf == NULL))
				{
//					c->Write(c, _UU("TTC_ENTER_TO_EXIT"));
//					GetLine(NULL, 0);
//					StopTtc(ttc);
				}
			}


			FUNC13(&result, sizeof(result));
			ret = FUNC3(ttc, &result);

			if (ret == ERR_NO_ERROR)
			{
				FUNC12(c, &result);
			}
		}
	}

	if (ret != ERR_NO_ERROR)
	{
		FUNC0(c, ret);
	}

	// Release of the parameter list
	FUNC2(o);

	FUNC1(host);

	return ret;
}