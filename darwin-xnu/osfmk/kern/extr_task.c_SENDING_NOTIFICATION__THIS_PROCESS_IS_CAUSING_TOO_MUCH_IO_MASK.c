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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* task_t ;
struct ledger_entry_info {int lei_balance; int lei_limit; int lei_refill_period; } ;
typedef  scalar_t__ mach_exception_data_type_t ;
typedef  int kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  logical_writes; int /*<<< orphan*/  physical_writes; } ;
struct TYPE_6__ {int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 int EXCEPTION_CODE_MAX ; 
 int /*<<< orphan*/  EXC_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
#define  FLAVOR_IO_LOGICAL_WRITES 129 
#define  FLAVOR_IO_PHYSICAL_WRITES 128 
 int /*<<< orphan*/  IOMON_DISABLE ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  OS_LOG_DEFAULT ; 
 int /*<<< orphan*/  RESOURCE_TYPE_IO ; 
 int /*<<< orphan*/  RMON_LOGWRITES_VIOLATED ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  kRNFlagsNone ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ledger_entry_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  send_disk_writes_violation ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,struct ledger_entry_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_2__ task_ledgers ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ledger_entry_info*) ; 

void __attribute__((noinline)) FUNC14(int flavor)
{
	int                             pid = 0;
	task_t                          task = FUNC5();
#ifdef EXC_RESOURCE_MONITORS
	mach_exception_data_type_t      code[EXCEPTION_CODE_MAX];
#endif /* EXC_RESOURCE_MONITORS */
	struct ledger_entry_info        lei;
	kern_return_t                   kr;

#ifdef MACH_BSD
	pid = proc_selfpid();
#endif
	/* 
	 * Get the ledger entry info. We need to do this before disabling the exception 
	 * to get correct values for all fields.
	 */
	switch(flavor) {
		case FLAVOR_IO_PHYSICAL_WRITES:
			FUNC7(task->ledger, task_ledgers.physical_writes, &lei);
			break;
		case FLAVOR_IO_LOGICAL_WRITES:
			FUNC7(task->ledger, task_ledgers.logical_writes, &lei);
			break;
	}

	
	/*
	 * Disable the exception notification so we don't overwhelm
	 * the listener with an endless stream of redundant exceptions.
	 * TODO: detect whether another thread is already reporting the violation.
	 */
	uint32_t flags = IOMON_DISABLE;
	FUNC12(task, &flags);

	if (flavor == FLAVOR_IO_LOGICAL_WRITES) {
		FUNC13(RMON_LOGWRITES_VIOLATED, &lei);
	}
	FUNC8(OS_LOG_DEFAULT, "process [%d] caught causing excessive I/O (flavor: %d). Task I/O: %lld MB. [Limit : %lld MB per %lld secs]\n",
		pid, flavor, (lei.lei_balance / (1024 * 1024)), (lei.lei_limit / (1024 * 1024)), (lei.lei_refill_period / NSEC_PER_SEC));

	kr = FUNC11(send_disk_writes_violation, task, &lei, kRNFlagsNone);
	if (kr) {
		FUNC9("send_resource_violation(disk_writes, ...): error %#x\n", kr);
	}

#ifdef EXC_RESOURCE_MONITORS
	code[0] = code[1] = 0;
	EXC_RESOURCE_ENCODE_TYPE(code[0], RESOURCE_TYPE_IO);
	EXC_RESOURCE_ENCODE_FLAVOR(code[0], flavor);
	EXC_RESOURCE_IO_ENCODE_INTERVAL(code[0], (lei.lei_refill_period / NSEC_PER_SEC));
	EXC_RESOURCE_IO_ENCODE_LIMIT(code[0], (lei.lei_limit / (1024 * 1024)));
	EXC_RESOURCE_IO_ENCODE_OBSERVED(code[1], (lei.lei_balance / (1024 * 1024)));
	exception_triage(EXC_RESOURCE, code, EXCEPTION_CODE_MAX);
#endif /* EXC_RESOURCE_MONITORS */
}