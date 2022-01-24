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
typedef  scalar_t__ uint64_t ;
struct second_thread_args {scalar_t__ iterations; scalar_t__ last_poke_time; int cpuno; double* wakeup_second_jitter_arr; double too_much; int /*<<< orphan*/  return_semaphore; int /*<<< orphan*/  woke_on_same_cpu; int /*<<< orphan*/  wakeup_semaphore; int /*<<< orphan*/  pol; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int DBG_FUNC_NONE ; 
 scalar_t__ KERN_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

void *
FUNC9(void *args)
{
	struct second_thread_args *secargs = (struct second_thread_args *)args;
	int res;
	uint64_t i;
	kern_return_t kret;
	uint64_t wake_time;
	int cpuno;

	/* Set scheduling policy */
	res = FUNC8(secargs->pol);
	if (res != 0) {
		FUNC5("Couldn't set thread policy.\n");
		FUNC2(1);
	}

	/* 
	 * Repeatedly pick a random timer length and 
	 * try to sleep exactly that long 
	 */
	for (i = 0; i < secargs->iterations; i++) {

		/* Wake up when poked by main thread */
		kret = FUNC7(secargs->wakeup_semaphore);
		if (kret != KERN_SUCCESS) {
			FUNC1(1, "semaphore_wait %d", kret);
		}

		wake_time = FUNC4();
		cpuno = FUNC0();
		if (wake_time < secargs->last_poke_time) {
			/* Woke in past, unsynchronized mach_absolute_time()? */
			
			FUNC1(1, "woke in past %llu (%d) < %llu (%d)", wake_time, cpuno, secargs->last_poke_time, secargs->cpuno);
		}

		if (cpuno == secargs->cpuno) {
			secargs->woke_on_same_cpu++;
		}

		secargs->wakeup_second_jitter_arr[i] = (double)(wake_time - secargs->last_poke_time);
		
		/* Too much: cut a tracepoint for a debugger */
		if (secargs->wakeup_second_jitter_arr[i] >= secargs->too_much) {
			FUNC3(0xeeeee4 | DBG_FUNC_NONE, 0, 0, 0, 0);
		}

		kret = FUNC6(secargs->return_semaphore);
		if (kret != KERN_SUCCESS) {
			FUNC1(1, "semaphore_signal %d", kret);
		}

	}

	return NULL;
}