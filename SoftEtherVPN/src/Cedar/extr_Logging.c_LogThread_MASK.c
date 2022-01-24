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
typedef  int /*<<< orphan*/  current_logfile_datename ;
typedef  int /*<<< orphan*/  current_file_name ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ num_item; } ;
struct TYPE_6__ {int /*<<< orphan*/  Event; TYPE_2__* RecordQueue; scalar_t__ Halt; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ LOG ;
typedef  int /*<<< orphan*/  IO ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 scalar_t__ g_foreground ; 

void FUNC14(THREAD *thread, void *param)
{
	LOG *g;
	IO *io;
	BUF *b;
	bool flag = false;
	char current_file_name[MAX_SIZE];
	char current_logfile_datename[MAX_SIZE];
	bool log_date_changed = false;
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	FUNC13(current_file_name, sizeof(current_file_name));
	FUNC13(current_logfile_datename, sizeof(current_logfile_datename));

	g = (LOG *)param;

	io = g_foreground ? FUNC2() : NULL;
	b = FUNC8();

#ifdef	OS_WIN32

	// Lower priority to bottom
	MsSetThreadPriorityIdle();

#endif	// OS_WIN32

	FUNC9(thread);

	while (true)
	{
		UINT64 s = FUNC10();

		while (true)
		{
			if (g_foreground)
			{
				if (! FUNC5(g, b, io))
				{
					break;
				}
			}
			else
			{
				if (! FUNC4(g, b, &io, &log_date_changed, current_logfile_datename, current_file_name))
				{
					break;
				}
			}
		}

		if (g->Halt)
		{
			// Break after finishing to save all records
			// when the stop flag stood
			UINT num;

			if (flag == false)
			{
#ifdef	OS_WIN32
				MsSetThreadPriorityRealtime();
#endif	// OS_WIN32
				flag = true;
			}

			FUNC3(g->RecordQueue);
			{
				num = g->RecordQueue->num_item;
			}
			FUNC11(g->RecordQueue);

			if (num == 0 || io == NULL)
			{
				break;
			}
		}
		else
		{
			FUNC12(g->Event, 9821);
		}
	}

	if (io != NULL && !g_foreground)
	{
		FUNC0(io, true);
	}

	FUNC1(b);
}