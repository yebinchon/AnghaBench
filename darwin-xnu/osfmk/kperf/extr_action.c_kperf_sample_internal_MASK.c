#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_13__ {unsigned int nframes; void* flags; } ;
struct TYPE_15__ {void* flags; void* nframes; } ;
struct TYPE_14__ {int kpthi_runmode; } ;
struct kperf_sample {int /*<<< orphan*/  kpcdata; int /*<<< orphan*/  th_dispatch; TYPE_2__ ucallstack; int /*<<< orphan*/  meminfo; int /*<<< orphan*/  tk_snapshot; TYPE_6__ kcallstack; int /*<<< orphan*/  th_snapshot; int /*<<< orphan*/  th_scheduling; TYPE_4__ th_info; } ;
struct kperf_context {scalar_t__ cur_pid; int /*<<< orphan*/  cur_task; TYPE_1__* cur_thread; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  kperf_pet_gen; } ;
struct TYPE_11__ {unsigned int userdata; void* kcallstack_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* CALLSTACK_VALID ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 void* MAX_CALLSTACK_FRAMES ; 
 int /*<<< orphan*/  PERF_CS_UPEND ; 
 int PERF_GEN_EVENT ; 
 int /*<<< orphan*/  PERF_TI_DISPPEND ; 
 unsigned int SAMPLER_KSTACK ; 
 unsigned int SAMPLER_MEMINFO ; 
 unsigned int SAMPLER_PMC_CPU ; 
 unsigned int SAMPLER_PMC_THREAD ; 
 unsigned int SAMPLER_SYS_MEM ; 
 unsigned int SAMPLER_TASK_MASK ; 
 unsigned int SAMPLER_THREAD_MASK ; 
 unsigned int SAMPLER_TH_DISPATCH ; 
 unsigned int SAMPLER_TH_INFO ; 
 unsigned int SAMPLER_TH_INSCYC ; 
 unsigned int SAMPLER_TH_SCHEDULING ; 
 unsigned int SAMPLER_TH_SNAPSHOT ; 
 unsigned int SAMPLER_TK_INFO ; 
 unsigned int SAMPLER_TK_SNAPSHOT ; 
 unsigned int SAMPLER_USTACK ; 
 int /*<<< orphan*/  SAMPLE_CONTINUE ; 
 unsigned int SAMPLE_FLAG_CONTINUATION ; 
 unsigned int SAMPLE_FLAG_EMPTY_CALLSTACK ; 
 unsigned int SAMPLE_FLAG_IDLE_THREADS ; 
 unsigned int SAMPLE_FLAG_NON_INTERRUPT ; 
 unsigned int SAMPLE_FLAG_ONLY_SYSTEM ; 
 unsigned int SAMPLE_FLAG_PEND_USER ; 
 unsigned int SAMPLE_FLAG_SYSTEM ; 
 unsigned int SAMPLE_FLAG_TASK_ONLY ; 
 unsigned int SAMPLE_FLAG_THREAD_ONLY ; 
 unsigned int actionc ; 
 TYPE_10__* actionv ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kperf_pet_gen ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC22 (struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int FUNC28 (struct kperf_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,struct kperf_context*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC31(struct kperf_sample *sbuf,
                      struct kperf_context *context,
                      unsigned sample_what, unsigned sample_flags,
                      unsigned actionid, uint32_t ucallstack_depth)
{
	int pended_ucallstack = 0;
	int pended_th_dispatch = 0;
	bool on_idle_thread = false;
	uint32_t userdata = actionid;
	bool task_only = false;

	/* not much point continuing here, but what to do ? return
	 * Shutdown? cut a tracepoint and continue?
	 */
	if (sample_what == 0) {
		return SAMPLE_CONTINUE;
	}

	/* callstacks should be explicitly ignored */
	if (sample_flags & SAMPLE_FLAG_EMPTY_CALLSTACK) {
		sample_what &= ~(SAMPLER_KSTACK | SAMPLER_USTACK);
	}

	if (sample_flags & SAMPLE_FLAG_ONLY_SYSTEM) {
		sample_what &= SAMPLER_SYS_MEM;
	}

	FUNC2((sample_flags & (SAMPLE_FLAG_THREAD_ONLY | SAMPLE_FLAG_TASK_ONLY))
			!= (SAMPLE_FLAG_THREAD_ONLY | SAMPLE_FLAG_TASK_ONLY));
	if (sample_flags & SAMPLE_FLAG_THREAD_ONLY) {
		sample_what &= SAMPLER_THREAD_MASK;
	}
	if (sample_flags & SAMPLE_FLAG_TASK_ONLY) {
		task_only = true;
		sample_what &= SAMPLER_TASK_MASK;
	}

	if (!task_only) {
		context->cur_thread->kperf_pet_gen = kperf_pet_gen;
	}
	bool is_kernel = (context->cur_pid == 0);

	if (actionid && actionid <= actionc) {
		sbuf->kcallstack.nframes = actionv[actionid - 1].kcallstack_depth;
	} else {
		sbuf->kcallstack.nframes = MAX_CALLSTACK_FRAMES;
	}

	if (ucallstack_depth) {
		sbuf->ucallstack.nframes = ucallstack_depth;
	} else {
		sbuf->ucallstack.nframes = MAX_CALLSTACK_FRAMES;
	}

	sbuf->kcallstack.flags = CALLSTACK_VALID;
	sbuf->ucallstack.flags = CALLSTACK_VALID;

	/* an event occurred. Sample everything and dump it in a
	 * buffer.
	 */

	/* collect data from samplers */
	if (sample_what & SAMPLER_TH_INFO) {
		FUNC21(&sbuf->th_info, context);

		/* See if we should drop idle thread samples */
		if (!(sample_flags & SAMPLE_FLAG_IDLE_THREADS)) {
			if (sbuf->th_info.kpthi_runmode & 0x40) {
				on_idle_thread = true;
				goto log_sample;
			}
		}
	}

	if (sample_what & SAMPLER_TH_SNAPSHOT) {
		FUNC26(&(sbuf->th_snapshot), context);
	}
	if (sample_what & SAMPLER_TH_SCHEDULING) {
		FUNC24(&(sbuf->th_scheduling), context);
	}
	if (sample_what & SAMPLER_KSTACK) {
		if (sample_flags & SAMPLE_FLAG_CONTINUATION) {
			FUNC4(&(sbuf->kcallstack), context);
		/* outside of interrupt context, backtrace the current thread */
		} else if (sample_flags & SAMPLE_FLAG_NON_INTERRUPT) {
			FUNC3(&(sbuf->kcallstack), context);
		} else {
			FUNC6(&(sbuf->kcallstack), context);
		}
	}
	if (sample_what & SAMPLER_TK_SNAPSHOT) {
		FUNC16(context->cur_task, &(sbuf->tk_snapshot));
	}

	/* sensitive ones */
	if (!is_kernel) {
		if (sample_what & SAMPLER_MEMINFO) {
			FUNC12(context->cur_task, &(sbuf->meminfo));
		}

		if (sample_flags & SAMPLE_FLAG_PEND_USER) {
			if (sample_what & SAMPLER_USTACK) {
				pended_ucallstack = FUNC28(context, sbuf->ucallstack.nframes);
			}

			if (sample_what & SAMPLER_TH_DISPATCH) {
				pended_th_dispatch = FUNC18(context);
			}
		} else {
			if (sample_what & SAMPLER_USTACK) {
				FUNC29(&(sbuf->ucallstack), context);
			}

			if (sample_what & SAMPLER_TH_DISPATCH) {
				FUNC19(&(sbuf->th_dispatch), context);
			}
		}
	}

	if (sample_what & SAMPLER_PMC_THREAD) {
		FUNC10(&(sbuf->kpcdata), sample_what);
	} else if (sample_what & SAMPLER_PMC_CPU) {
		FUNC8(&(sbuf->kpcdata), sample_what);
	}

log_sample:
	/* lookup the user tag, if any */
	if (actionid && (actionid <= actionc)) {
		userdata = actionv[actionid - 1].userdata;
	}

	/* avoid logging if this sample only pended samples */
	if (sample_flags & SAMPLE_FLAG_PEND_USER &&
	    !(sample_what & ~(SAMPLER_USTACK | SAMPLER_TH_DISPATCH)))
	{
		return SAMPLE_CONTINUE;
	}

	/* stash the data into the buffer
	 * interrupts off to ensure we don't get split
	 */
	boolean_t enabled = FUNC30(FALSE);

	FUNC0(PERF_GEN_EVENT | DBG_FUNC_START, sample_what,
	         actionid, userdata, sample_flags);

	if (sample_flags & SAMPLE_FLAG_SYSTEM) {
		if (sample_what & SAMPLER_SYS_MEM) {
			FUNC13();
		}
	}
	if (on_idle_thread) {
		goto log_sample_end;
	}

	if (sample_what & SAMPLER_TH_INFO) {
		FUNC20(&sbuf->th_info);
	}
	if (sample_what & SAMPLER_TH_SCHEDULING) {
		FUNC23(&(sbuf->th_scheduling));
	}
	if (sample_what & SAMPLER_TH_SNAPSHOT) {
		FUNC25(&(sbuf->th_snapshot));
	}
	if (sample_what & SAMPLER_KSTACK) {
		FUNC5(&sbuf->kcallstack);
	}
	if (sample_what & SAMPLER_TH_INSCYC) {
		FUNC22(context);
	}
	if (sample_what & SAMPLER_TK_SNAPSHOT) {
		FUNC15(&(sbuf->tk_snapshot));
	}
	if (sample_what & SAMPLER_TK_INFO) {
		FUNC14(context);
	}

	/* dump user stuff */
	if (!is_kernel) {
		/* dump meminfo */
		if (sample_what & SAMPLER_MEMINFO) {
			FUNC11(&(sbuf->meminfo));
		}

		if (sample_flags & SAMPLE_FLAG_PEND_USER) {
			if (pended_ucallstack) {
				FUNC1(PERF_CS_UPEND);
			}

			if (pended_th_dispatch) {
				FUNC1(PERF_TI_DISPPEND);
			}
		} else {
			if (sample_what & SAMPLER_USTACK) {
				FUNC27(&(sbuf->ucallstack));
			}

			if (sample_what & SAMPLER_TH_DISPATCH) {
				FUNC17(&(sbuf->th_dispatch));
			}
		}
	}

	if (sample_what & SAMPLER_PMC_THREAD) {
		FUNC9(&(sbuf->kpcdata));
	} else if (sample_what & SAMPLER_PMC_CPU) {
		FUNC7(&(sbuf->kpcdata));
	}

log_sample_end:
	FUNC0(PERF_GEN_EVENT | DBG_FUNC_END, sample_what, on_idle_thread ? 1 : 0);

	/* intrs back on */
	FUNC30(enabled);

	return SAMPLE_CONTINUE;
}