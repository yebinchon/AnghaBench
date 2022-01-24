#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {scalar_t__ t_dtrace_resumepid; scalar_t__ t_dtrace_stop; scalar_t__ t_dtrace_sig; } ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_24__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_22__ {TYPE_2__ it_value; } ;
struct TYPE_23__ {int p_flag; int p_dtrace_stop; int /*<<< orphan*/  task; TYPE_2__ p_rlim_cpu; TYPE_16__ p_vtimer_prof; TYPE_16__ p_vtimer_user; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct uthread*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* PROC_NULL ; 
 int P_OWEUPC ; 
 int P_PROFIL ; 
 int /*<<< orphan*/  SIGPROF ; 
 int /*<<< orphan*/  SIGVTALRM ; 
 int /*<<< orphan*/  SIGXCPU ; 
 int /*<<< orphan*/  TASK_VTIMER_PROF ; 
 int /*<<< orphan*/  TASK_VTIMER_RLIM ; 
 int /*<<< orphan*/  TASK_VTIMER_USER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct uthread* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 TYPE_1__* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 scalar_t__ FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,struct timeval*,TYPE_2__*) ; 

void
FUNC32(thread_t thread)
{
	proc_t p = FUNC4();
	struct uthread *ut = FUNC7(thread);
	int	signum;
	user_addr_t pc;
	static int bsd_init_done = 0;

	if (p == NULL)
		return;

	/* don't run bsd ast on exec copy or exec'ed tasks */
	if (FUNC22(FUNC5()) || FUNC23(FUNC5())) {
		return;
	}

	if ((p->p_flag & P_OWEUPC) && (p->p_flag & P_PROFIL)) {
		pc = FUNC8();
		FUNC2(p, pc, 1);
		FUNC1(~((uint32_t)P_OWEUPC), &p->p_flag);
	}

	if (FUNC30(&p->p_vtimer_user.it_value)) {
		uint32_t	microsecs;

		FUNC28(p->task, TASK_VTIMER_USER, &microsecs);

		if (!FUNC10(p, &p->p_vtimer_user, microsecs)) {
			if (FUNC30(&p->p_vtimer_user.it_value))
				FUNC27(p->task, TASK_VTIMER_USER);
			else
				FUNC26(p->task, TASK_VTIMER_USER);

			FUNC20(p, thread, SIGVTALRM);
		}
	}

	if (FUNC30(&p->p_vtimer_prof.it_value)) {
		uint32_t	microsecs;

		FUNC28(p->task, TASK_VTIMER_PROF, &microsecs);

		if (!FUNC10(p, &p->p_vtimer_prof, microsecs)) {
			if (FUNC30(&p->p_vtimer_prof.it_value))
				FUNC27(p->task, TASK_VTIMER_PROF);
			else
				FUNC26(p->task, TASK_VTIMER_PROF);

			FUNC20(p, thread, SIGPROF);
		}
	}

	if (FUNC30(&p->p_rlim_cpu)) {
		struct timeval		tv;

		FUNC28(p->task, TASK_VTIMER_RLIM, (uint32_t *) &tv.tv_usec);

		FUNC16(p);
		if (p->p_rlim_cpu.tv_sec > 0 || p->p_rlim_cpu.tv_usec > tv.tv_usec) {
			tv.tv_sec = 0;
			FUNC31(&p->p_rlim_cpu, &tv, &p->p_rlim_cpu);
			FUNC17(p);
		} else {

			FUNC29(&p->p_rlim_cpu);
			FUNC17(p);

			FUNC26(p->task, TASK_VTIMER_RLIM);

			FUNC20(p, thread, SIGXCPU);
		}
	}

#if CONFIG_DTRACE
	if (ut->t_dtrace_sig) {
	    uint8_t dt_action_sig = ut->t_dtrace_sig;
	    ut->t_dtrace_sig = 0;
	    psignal(p, dt_action_sig);
	}

	if (ut->t_dtrace_stop) {
		ut->t_dtrace_stop = 0;
		proc_lock(p);
		p->p_dtrace_stop = 1;
		proc_unlock(p);
		(void)task_suspend_internal(p->task);
	}

	if (ut->t_dtrace_resumepid) {
		proc_t resumeproc = proc_find(ut->t_dtrace_resumepid);
		ut->t_dtrace_resumepid = 0;
		if (resumeproc != PROC_NULL) {
			proc_lock(resumeproc);
			/* We only act on processes stopped by dtrace */
			if (resumeproc->p_dtrace_stop) {
				resumeproc->p_dtrace_stop = 0;
				proc_unlock(resumeproc);
				task_resume_internal(resumeproc->task);
			}
			else {
				proc_unlock(resumeproc);
			}
			proc_rele(resumeproc);
		}
	}
		    
#endif /* CONFIG_DTRACE */

	FUNC13(p);
	if (FUNC0(p, FUNC6(), ut)) {
		while ( (signum = FUNC9(p)) )
			FUNC11(signum);
	}
	FUNC18(p);

#ifdef CONFIG_32BIT_TELEMETRY
	if (task_consume_32bit_log_flag(p->task)) {
		proc_log_32bit_telemetry(p);
	}
#endif /* CONFIG_32BIT_TELEMETRY */

	if (!bsd_init_done) {
		bsd_init_done = 1;
		FUNC3();
	}
}