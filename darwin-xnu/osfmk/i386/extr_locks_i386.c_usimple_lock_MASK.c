#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* usimple_lock_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  simple_lock_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ lock_data; } ;
struct TYPE_9__ {TYPE_7__ interlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_SPIN_LOCK_ACQUIRE ; 
 int /*<<< orphan*/  LockTimeOutTSC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_1__*,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* spinlock_timed_out ; 
 int /*<<< orphan*/  FUNC13 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC16(
	usimple_lock_t	l)
{
#ifndef	MACHINE_SIMPLE_LOCK
	FUNC0(pc);

	FUNC2(pc);
	FUNC3(FUNC15(l, pc));

	if(FUNC4(FUNC7(&l->interlock, LockTimeOutTSC) == 0))	{
		boolean_t uslock_acquired = FALSE;
		while (FUNC9()) {
			FUNC6();
			if ((uslock_acquired = FUNC7(&l->interlock, LockTimeOutTSC)))
				break;
		}

		if (uslock_acquired == FALSE) {
			uint32_t lock_cpu;
			uintptr_t lowner = (uintptr_t)l->interlock.lock_data;
			spinlock_timed_out = l;
			lock_cpu = FUNC13(lowner);
			FUNC10("Spinlock acquisition timed out: lock=%p, lock owner thread=0x%lx, current_thread: %p, lock owner active on CPU 0x%x, current owner: 0x%lx, time: %llu",
			      l, lowner,  FUNC5(), lock_cpu, (uintptr_t)l->interlock.lock_data, FUNC8());
		}
	}
#if DEVELOPMENT || DEBUG
		pltrace(FALSE);
#endif

	FUNC3(FUNC14(l, pc));
#else
	simple_lock((simple_lock_t)l);
#endif
#if CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_SPIN_LOCK_ACQUIRE, l, 0);
#endif
}