#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  void* UINT ;
struct TYPE_5__ {int NumTcp; scalar_t__ Type; int Double; int Raw; int* Cancel; int /*<<< orphan*/  Thread; int /*<<< orphan*/ * Print; void* Param; int /*<<< orphan*/  ErrorCode; int /*<<< orphan*/ * StartEvent; int /*<<< orphan*/  Span; int /*<<< orphan*/  Host; void* Port; int /*<<< orphan*/  InitedEvent; } ;
typedef  int /*<<< orphan*/  TT_PRINT_PROC ;
typedef  TYPE_1__ TTC ;
typedef  int /*<<< orphan*/  EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ TRAFFIC_TYPE_FULL ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TtcThread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

TTC *FUNC7(char *host, UINT port, UINT numtcp, UINT type, UINT64 span, bool dbl, bool raw, TT_PRINT_PROC *print_proc, void *param, EVENT *start_event, bool *cancel)
{
	TTC *ttc;

	ttc = FUNC5(sizeof(TTC));
	ttc->InitedEvent = FUNC0();
	ttc->Port = port;
	FUNC2(ttc->Host, sizeof(ttc->Host), host);
	ttc->NumTcp = numtcp;
	ttc->Type = type;
	ttc->Span = span;
	ttc->Double = dbl;
	ttc->Raw = raw;
	ttc->StartEvent = start_event;
	ttc->Cancel = cancel;

	if (ttc->Type == TRAFFIC_TYPE_FULL && ttc->NumTcp < 2)
	{
		ttc->NumTcp = 2;
	}

	ttc->Print = print_proc;
	ttc->Param = param;
	ttc->ErrorCode = ERR_NO_ERROR;

	FUNC3(ttc->Param, ttc->Print, FUNC6("TTC_INIT"));

	ttc->Thread = FUNC1(TtcThread, ttc);
	FUNC4(ttc->Thread);

	return ttc;
}