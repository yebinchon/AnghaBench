#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int ast_t ;
struct TYPE_17__ {int state; int sched_flags; scalar_t__ promotions; scalar_t__ was_promoted_on_wakeup; scalar_t__ rwlock_count; int /*<<< orphan*/ * waiting_for_mutex; int /*<<< orphan*/  kevent_ast_bits; } ;

/* Variables and functions */
 int AST_APC ; 
 int AST_BSD ; 
 int AST_DTRACE ; 
 int AST_GUARD ; 
 int AST_KEVENT ; 
 int AST_KPERF ; 
 int AST_LEDGER ; 
 int AST_MACF ; 
 int AST_PER_THREAD ; 
 int AST_PREEMPT ; 
 int AST_PREEMPTION ; 
 int AST_QUANTUM ; 
 int AST_SFI ; 
 int AST_TELEMETRY_ALL ; 
 int AST_UNQUIESCE ; 
 scalar_t__ AST_URGENT ; 
 scalar_t__ FALSE ; 
 int TH_IDLE ; 
 int TH_SFLAG_DEPRESS ; 
 int TH_SFLAG_EXEC_PROMOTED ; 
 int TH_SFLAG_PROMOTED ; 
 int TH_SFLAG_RW_PROMOTED ; 
 int TH_SFLAG_WAITQ_PROMOTED ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  c_ast_taken_block ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_1__* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  thread_preempted ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int FUNC29 (TYPE_1__*) ; 

void
FUNC30(void)
{
	FUNC0(FUNC18() == FALSE);

	thread_t thread = FUNC11();

	/* We are about to return to userspace, there must not be a pending wait */
	FUNC0(FUNC29(thread));
	FUNC0((thread->state & TH_IDLE) == 0);

	/* TODO: Add more 'return to userspace' assertions here */

	/*
	 * If this thread was urgently preempted in userspace,
	 * take the preemption before processing the ASTs.
	 * The trap handler will call us again if we have more ASTs, so it's
	 * safe to block in a continuation here.
	 */
	if (FUNC2(AST_URGENT) == AST_URGENT) {
		ast_t urgent_reason = FUNC1(AST_PREEMPTION);

		FUNC0(urgent_reason & AST_PREEMPT);

		/* TODO: Should we csw_check again to notice if conditions have changed? */

		FUNC26(thread_preempted, NULL, urgent_reason);
		/* NOTREACHED */
	}

	/*
	 * AST_KEVENT does not send an IPI when setting the ast for a thread running in parallel
	 * on a different processor. Only the ast bit on the thread will be set.
	 *
	 * Force a propagate for concurrent updates without an IPI.
	 */
	FUNC3(thread);

	/*
	 * Consume all non-preemption processor ASTs matching reasons
	 * because we're handling them here.
	 *
	 * If one of the AST handlers blocks in a continuation,
	 * we'll reinstate the unserviced thread-level AST flags
	 * from the thread to the processor on context switch.
	 * If one of the AST handlers sets another AST,
	 * the trap handler will call ast_taken_user again.
	 *
	 * We expect the AST handlers not to thread_exception_return
	 * without an ast_propagate or context switch to reinstate
	 * the per-processor ASTs.
	 *
	 * TODO: Why are AST_DTRACE and AST_KPERF not per-thread ASTs?
	 */
	ast_t reasons = FUNC1(AST_PER_THREAD | AST_KPERF | AST_DTRACE);

	FUNC19(TRUE);

#if CONFIG_DTRACE
	if (reasons & AST_DTRACE) {
		dtrace_ast();
	}
#endif

#ifdef MACH_BSD
	if (reasons & AST_BSD) {
		thread_ast_clear(thread, AST_BSD);
		bsd_ast(thread);
	}
#endif

#if CONFIG_MACF
	if (reasons & AST_MACF) {
		thread_ast_clear(thread, AST_MACF);
		mac_thread_userret(thread);
	}
#endif

	if (reasons & AST_APC) {
		FUNC25(thread, AST_APC);
		FUNC24(thread);
	}

	if (reasons & AST_GUARD) {
		FUNC25(thread, AST_GUARD);
		FUNC13(thread);
	}

	if (reasons & AST_LEDGER) {
		FUNC25(thread, AST_LEDGER);
		FUNC16(thread);
	}

	if (reasons & AST_KPERF) {
		FUNC25(thread, AST_KPERF);
		FUNC15(thread);
	}

	if (reasons & AST_KEVENT) {
		FUNC25(thread, AST_KEVENT);
		uint16_t bits = FUNC4(&thread->kevent_ast_bits, 0);
		if (bits) FUNC14(thread, bits);
	}

#if CONFIG_TELEMETRY
	if (reasons & AST_TELEMETRY_ALL) {
		ast_t telemetry_reasons = reasons & AST_TELEMETRY_ALL;
		thread_ast_clear(thread, AST_TELEMETRY_ALL);
		telemetry_ast(thread, telemetry_reasons);
	}
#endif

	spl_t s = FUNC21();

#if CONFIG_SCHED_SFI
	/*
	 * SFI is currently a per-processor AST, not a per-thread AST
	 *      TODO: SFI should be a per-thread AST
	 */
	if (ast_consume(AST_SFI) == AST_SFI) {
		sfi_ast(thread);
	}
#endif

	/* We are about to return to userspace, there must not be a pending wait */
	FUNC0(FUNC29(thread));

	/*
	 * We've handled all per-thread ASTs, time to handle non-urgent preemption.
	 *
	 * We delay reading the preemption bits until now in case the thread
	 * blocks while handling per-thread ASTs.
	 *
	 * If one of the AST handlers had managed to set a new AST bit,
	 * thread_exception_return will call ast_taken again.
	 */
	ast_t preemption_reasons = FUNC1(AST_PREEMPTION);

	if (preemption_reasons & AST_PREEMPT) {
		/* Conditions may have changed from when the AST_PREEMPT was originally set, so re-check. */

		FUNC27(thread);
		preemption_reasons = FUNC9(FUNC10(), (preemption_reasons & AST_QUANTUM));
		FUNC28(thread);

#if CONFIG_SCHED_SFI
		/* csw_check might tell us that SFI is needed */
		if (preemption_reasons & AST_SFI) {
			sfi_ast(thread);
		}
#endif

		if (preemption_reasons & AST_PREEMPT) {
			FUNC6(c_ast_taken_block++);
			/* switching to a continuation implicitly re-enables interrupts */
			FUNC26(thread_preempted, NULL, preemption_reasons);
			/* NOTREACHED */
		}
	}

	if (FUNC1(AST_UNQUIESCE) == AST_UNQUIESCE) {
		FUNC8();
	}

	FUNC7();

	FUNC22(s);

	/*
	 * Here's a good place to put assertions of things which must be true
	 * upon return to userspace.
	 */
	FUNC0((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) == 0);
	FUNC0((thread->sched_flags & TH_SFLAG_RW_PROMOTED) == 0);
	FUNC0((thread->sched_flags & TH_SFLAG_EXEC_PROMOTED) == 0);
	FUNC0((thread->sched_flags & TH_SFLAG_PROMOTED) == 0);
	FUNC0((thread->sched_flags & TH_SFLAG_DEPRESS) == 0);

	FUNC0(thread->promotions == 0);
	FUNC0(thread->was_promoted_on_wakeup == 0);
	FUNC0(thread->waiting_for_mutex == NULL);
	FUNC0(thread->rwlock_count == 0);
}