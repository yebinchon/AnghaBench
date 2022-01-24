#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * thread_t ;
struct kperf_context {int /*<<< orphan*/ * cur_thread; } ;
struct callstack {scalar_t__ nframes; int /*<<< orphan*/  flags; scalar_t__ frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,uintptr_t,scalar_t__,...) ; 
 int /*<<< orphan*/  CALLSTACK_64BIT ; 
 int /*<<< orphan*/  CALLSTACK_KERNEL_WORDS ; 
 int /*<<< orphan*/  CALLSTACK_VALID ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EFAULT ; 
 int /*<<< orphan*/  ERR_GETSTACK ; 
 scalar_t__ MAX_CALLSTACK_FRAMES ; 
 int /*<<< orphan*/  PERF_CS_ERROR ; 
 int PERF_CS_USAMPLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,uintptr_t*,scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct callstack*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct callstack *cs, struct kperf_context *context)
{
	thread_t thread;
	bool user_64 = false;
	int err;

	FUNC1(cs != NULL);
	FUNC1(context != NULL);
	FUNC1(cs->nframes <= MAX_CALLSTACK_FRAMES);
	FUNC1(FUNC4() == TRUE);

	thread = context->cur_thread;
	FUNC1(thread != NULL);

	FUNC0(PERF_CS_USAMPLE | DBG_FUNC_START, (uintptr_t)FUNC5(thread),
		cs->nframes);

	cs->flags = 0;

	err = FUNC2(thread, (uintptr_t *)cs->frames,
		cs->nframes - 1, &cs->nframes, &user_64);
	cs->flags |= CALLSTACK_KERNEL_WORDS;
	if (user_64) {
		cs->flags |= CALLSTACK_64BIT;
	}

	if (!err || err == EFAULT) {
		FUNC3(cs, thread);
		cs->flags |= CALLSTACK_VALID;
	} else {
		cs->nframes = 0;
		FUNC0(PERF_CS_ERROR, ERR_GETSTACK, err);
	}

	FUNC0(PERF_CS_USAMPLE | DBG_FUNC_END, (uintptr_t)FUNC5(thread),
		cs->flags, cs->nframes);
}