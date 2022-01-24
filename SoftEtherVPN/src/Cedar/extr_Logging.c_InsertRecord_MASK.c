#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Event; int /*<<< orphan*/  RecordQueue; } ;
struct TYPE_6__ {void* Data; int /*<<< orphan*/ * ParseProc; int /*<<< orphan*/  Tick; } ;
typedef  int /*<<< orphan*/  RECORD_PARSE_PROC ;
typedef  TYPE_1__ RECORD ;
typedef  TYPE_2__ LOG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

void FUNC6(LOG *g, void *data, RECORD_PARSE_PROC *proc)
{
	RECORD *rec;
	// Validate arguments
	if (g == NULL || data == NULL || proc == NULL)
	{
		return;
	}

	rec = FUNC5(sizeof(RECORD));
	rec->Tick = FUNC3();
	rec->ParseProc = proc;
	rec->Data = data;

	FUNC1(g->RecordQueue);
	{
		FUNC0(g->RecordQueue, rec);
	}
	FUNC4(g->RecordQueue);

	FUNC2(g->Event);
}