#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned long long uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_time; } ;
struct TYPE_4__ {scalar_t__ t_threadledger; int options; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 scalar_t__ LEDGER_LIMIT_INFINITY ; 
 scalar_t__ LEDGER_NULL ; 
 int THREAD_CPULIMIT_BLOCK ; 
 int THREAD_CPULIMIT_DISABLE ; 
 int THREAD_CPULIMIT_EXCEPTION ; 
 int TH_OPT_PROC_CPULIMIT ; 
 int TH_OPT_PRVT_CPULIMIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,unsigned long long*) ; 
 TYPE_2__ thread_ledgers ; 

int
FUNC5(int *action, uint8_t *percentage, uint64_t *interval_ns)
{
	int64_t		abstime = 0;
	uint64_t 	limittime = 0;
	thread_t	thread = FUNC2();

	*percentage  = 0;
	*interval_ns = 0;
	*action      = 0;

	if (thread->t_threadledger == LEDGER_NULL) {
		/*
		 * This thread has no per-thread ledger, so it can't possibly
		 * have a CPU limit applied.
		 */
		return (KERN_SUCCESS);
	}

	FUNC4(thread->t_threadledger, thread_ledgers.cpu_time, interval_ns);
	FUNC3(thread->t_threadledger, thread_ledgers.cpu_time, &abstime);

	if ((abstime == LEDGER_LIMIT_INFINITY) || (*interval_ns == 0)) {
		/*
		 * This thread's CPU time ledger has no period or limit; so it
		 * doesn't have a CPU limit applied.
		 */
		 return (KERN_SUCCESS);
	}

	/*
	 * This calculation is the converse to the one in thread_set_cpulimit().
	 */
	FUNC0(abstime, &limittime);
	*percentage = (limittime * 100ULL) / *interval_ns;
	FUNC1(*percentage <= 100);

	if (thread->options & TH_OPT_PROC_CPULIMIT) {
		FUNC1((thread->options & TH_OPT_PRVT_CPULIMIT) == 0);

		*action = THREAD_CPULIMIT_BLOCK;
	} else if (thread->options & TH_OPT_PRVT_CPULIMIT) {
		FUNC1((thread->options & TH_OPT_PROC_CPULIMIT) == 0);

		*action = THREAD_CPULIMIT_EXCEPTION;
	} else {
		*action = THREAD_CPULIMIT_DISABLE;
	}

	return (KERN_SUCCESS);
}