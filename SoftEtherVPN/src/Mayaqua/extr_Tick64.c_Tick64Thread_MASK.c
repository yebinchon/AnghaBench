#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ LastTick; scalar_t__ TickStart; scalar_t__ Tick; scalar_t__ Tick64WithTime64; scalar_t__ Time64; scalar_t__ Halt; int /*<<< orphan*/  AdjustTime; int /*<<< orphan*/  TickLock; scalar_t__ RoundCount; } ;
struct TYPE_8__ {scalar_t__ Time; scalar_t__ Tick; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ ADJUST_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_ADJUST_TIME ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 void* FUNC12 () ; 
 scalar_t__ TICK64_SPAN ; 
 scalar_t__ TICK64_SPAN_WIN32 ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 () ; 
 TYPE_1__* FUNC19 (int) ; 
 int /*<<< orphan*/  halt_tick_event ; 
 TYPE_2__* tk64 ; 

void FUNC20(THREAD *thread, void *param)
{
	UINT n = 0;
	bool first = false;
	bool create_first_entry = true;
	UINT tick_span;
	// Validate arguments
	if (thread == NULL)
	{
		return;
	}

#ifdef	OS_WIN32

	// Raise the priority of the Win32 thread
	MsSetThreadPriorityRealtime();

	tick_span = TICK64_SPAN_WIN32;

#else	// OS_WIN32

	// Raise the priority of a POSIX threads
	FUNC14();

	tick_span = TICK64_SPAN;

#endif	// OS_WIN32

	while (true)
	{
		UINT tick;
		UINT64 tick64;

#ifndef	OS_WIN32
		tick = FUNC13();		// Get the current system clock

		if (tk64->LastTick > tick)
		{
			if ((tk64->LastTick - tick) >= (UINT64)0x0fffffff)
			{
				// The Tick has gone lap around
				tk64->RoundCount++;
			}
			else
			{
				// tick skewed (System administrator might change hardware clock)
				// Normally, the clock skew appears as sub-seconds error
				tick = tk64->LastTick;
			}
		}
		tk64->LastTick = tick;

		tick64 = (UINT64)tk64->RoundCount * (UINT64)4294967296LL + (UINT64)tick;

		FUNC7(tk64->TickLock);
		{
			if (tk64->TickStart == 0)
			{
				tk64->TickStart = tick64;
			}
			tick64 = tk64->Tick = tick64 - tk64->TickStart + (UINT64)1;
		}
		FUNC15(tk64->TickLock);
#else	// OS_WIN32
		tick64 = Win32FastTick64();
		tick = (UINT)tick64;
#endif	// OS_WIN32

		if (create_first_entry)
		{
			ADJUST_TIME *t = FUNC19(sizeof(ADJUST_TIME));
			t->Tick = tick64;
			t->Time = FUNC12();
			tk64->Tick64WithTime64 = tick64;
			tk64->Time64 = t->Time;
			FUNC0(tk64->AdjustTime, t);

			// Notify the completion of the initialization 
			FUNC10(thread);
			create_first_entry = false;
		}

		// Time correction
		n += tick_span;
		if (n >= 1000 || first == false)
		{
			UINT64 now = FUNC12();

			if (now < tk64->Time64 ||
				FUNC3((now - tk64->Time64) + tk64->Tick64WithTime64, tick64) >= tick_span)
			{
				ADJUST_TIME *t = FUNC19(sizeof(ADJUST_TIME));
				FUNC8(tk64->AdjustTime);
				{
					t->Tick = tick64;
					t->Time = now;
					FUNC0(tk64->AdjustTime, t);
					FUNC1("Adjust Time: Tick = %I64u, Time = %I64u\n",
						t->Tick, t->Time);

					// To prevent consuming memory infinite on a system that clock is skewd
					if (FUNC6(tk64->AdjustTime) > MAX_ADJUST_TIME)
					{
						// Remove the second
						ADJUST_TIME *t2 = FUNC5(tk64->AdjustTime, 1);

						FUNC2(tk64->AdjustTime, t2);

						FUNC1("NUM_ADJUST TIME: %u\n", FUNC6(tk64->AdjustTime));

						FUNC4(t2);
					}
				}
				FUNC16(tk64->AdjustTime);
				tk64->Time64 = now;
				tk64->Tick64WithTime64 = tick64;
			}
			first = true;
			n = 0;
		}

		if (tk64->Halt)
		{
			break;
		}

#ifdef	OS_WIN32
		Wait(halt_tick_event, tick_span);
#else	// OS_WIN32
		FUNC11(tick_span);
#endif	// OS_WIN32
	}
}