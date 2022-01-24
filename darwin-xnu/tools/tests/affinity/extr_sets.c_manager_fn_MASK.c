#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ work_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
struct TYPE_14__ {void* timeshare; } ;
typedef  TYPE_4__ thread_extended_policy_data_t ;
struct TYPE_15__ {int /*<<< orphan*/  affinity_tag; } ;
typedef  TYPE_5__ thread_affinity_policy_data_t ;
struct TYPE_16__ {int /*<<< orphan*/  stagenum; int /*<<< orphan*/  name; TYPE_2__* output; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* input; TYPE_7__* set; } ;
typedef  TYPE_6__ stage_info_t ;
struct TYPE_17__ {int /*<<< orphan*/  setnum; int /*<<< orphan*/  isize; } ;
typedef  TYPE_7__ line_info_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_12__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  cnd; scalar_t__ waiters; int /*<<< orphan*/  queue; } ;
struct TYPE_11__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  queue; void* waiters; int /*<<< orphan*/  cnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 void* FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY ; 
 int /*<<< orphan*/  THREAD_AFFINITY_POLICY_COUNT ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY_COUNT ; 
 void* TRUE ; 
 scalar_t__ affinity ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  funnel ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 scalar_t__ halting ; 
 long iterations ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ threads ; 
 scalar_t__ threads_ready ; 
 int /*<<< orphan*/  timer ; 

void *
FUNC17(void *arg)
{
	stage_info_t			*sp = (stage_info_t *) arg;
	line_info_t			*lp = sp->set;
	kern_return_t			ret;
	long				iteration = 0;

	/*
	 * If we're using affinity sets (we are by default)
	 * set our tag to by our thread set number.
	 */
	thread_extended_policy_data_t	epolicy;
	thread_affinity_policy_data_t	policy;

	epolicy.timeshare = FALSE;
	ret = FUNC16(
			FUNC8(), THREAD_EXTENDED_POLICY,
			(thread_policy_t) &epolicy,
			THREAD_EXTENDED_POLICY_COUNT);
	if (ret != KERN_SUCCESS)
		FUNC9("thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\n", ret);
	
	if (affinity) {
		policy.affinity_tag = lp->setnum;
		ret = FUNC16(
				FUNC8(), THREAD_AFFINITY_POLICY,
				(thread_policy_t) &policy,
				THREAD_AFFINITY_POLICY_COUNT);
		if (ret != KERN_SUCCESS)
			FUNC9("thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\n", ret);
	}

	FUNC0("Starting %s set: %d stage: %d\n", sp->name, lp->setnum, sp->stagenum);

	/*
	 * Start barrier.
	 * The tets thread to get here releases everyone and starts the timer.
	 */
	FUNC13(&funnel);
	threads_ready++;
	if (threads_ready == threads) {
		FUNC14(&funnel);
		if (halting) {
			FUNC9("  all threads ready for process %d, "
				"hit any key to start", FUNC6());
			FUNC4(stdout);
			(void) FUNC5();
		}
		FUNC10(&barrier);
		timer = FUNC7();
	} else {
		FUNC12(&barrier, &funnel);
		FUNC14(&funnel);
	}

	do {
		int		i;
		work_t		*workp;

		/*
		 * Get a buffer from the input queue.
		 * Block if none.
		 */
		FUNC13(&sp->input->mtx);
		while (1) {
			workp = FUNC1(&(sp->input->queue));
			if (workp != NULL)
				break;
			FUNC0("    %s[%d,%d] iteration %d waiting for buffer\n",
				sp->name, lp->setnum, sp->stagenum, iteration);
			sp->input->waiters = TRUE;
			FUNC12(&sp->input->cnd, &sp->input->mtx);
			sp->input->waiters = FALSE;
		}
		FUNC3(&(sp->input->queue), workp, link);
		FUNC14(&sp->input->mtx);

		FUNC0("  %s[%d,%d] iteration %d work %p data %p\n",
			sp->name, lp->setnum, sp->stagenum, iteration, workp, workp->data);

		/* Do our stuff with the buffer */
		(void) sp->fn(workp->data, lp->isize);

		/*
		 * Place the buffer on the input queue.
		 * Signal  waiters if required.
		 */
		FUNC13(&sp->output->mtx);
		FUNC2(&(sp->output->queue), workp, link);
		if (sp->output->waiters) {
			FUNC0("    %s[%d,%d] iteration %d signaling work\n",
				sp->name, lp->setnum, sp->stagenum, iteration);
			FUNC11(&sp->output->cnd);
		}
		FUNC14(&sp->output->mtx);
	} while (++iteration < iterations);

	FUNC0("Ending %s[%d,%d]\n", sp->name, lp->setnum, sp->stagenum);

	return (void *) iteration;
}