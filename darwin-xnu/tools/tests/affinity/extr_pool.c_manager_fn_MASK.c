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
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int setnum; TYPE_6__* stage; } ;
typedef  TYPE_3__ worker_info_t ;
struct TYPE_13__ {long number; int tag; int /*<<< orphan*/  isize; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ work_t ;
typedef  int /*<<< orphan*/  thread_policy_t ;
struct TYPE_14__ {int /*<<< orphan*/  timeshare; } ;
typedef  TYPE_5__ thread_extended_policy_data_t ;
struct TYPE_15__ {scalar_t__ stagenum; scalar_t__ work_todo; int /*<<< orphan*/  name; TYPE_2__* output; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* input; } ;
typedef  TYPE_6__ stage_info_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  cnd; int /*<<< orphan*/  mtx; scalar_t__ waiters; int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  queue; int /*<<< orphan*/  waiters; int /*<<< orphan*/  cnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,scalar_t__,...) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY ; 
 int /*<<< orphan*/  THREAD_EXTENDED_POLICY_COUNT ; 
 scalar_t__ affinity ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  barrier ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  funnel ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 scalar_t__ halting ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ threads ; 
 scalar_t__ threads_ready ; 
 int /*<<< orphan*/  timer ; 

void *
FUNC18(void *arg)
{
	worker_info_t	*wp = (worker_info_t *) arg;
	stage_info_t	*sp = wp->stage;
	boolean_t	is_producer = (sp->stagenum == 0);
	long		iteration = 0;
	int		current_tag = 0;

	kern_return_t			ret;
	thread_extended_policy_data_t	epolicy;
	epolicy.timeshare = FALSE;
	ret = FUNC17(
			FUNC9(), THREAD_EXTENDED_POLICY,
			(thread_policy_t) &epolicy,
			THREAD_EXTENDED_POLICY_COUNT);
	if (ret != KERN_SUCCESS)
		FUNC10("thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\n", ret);
	
	/*
	 * If we're using affinity sets and we're a producer
	 * set our tag to by our thread set number.
	 */
	if (affinity && is_producer) {
		FUNC4(wp->setnum);
		current_tag = wp->setnum;
	}

	FUNC0("Starting %s %d, stage: %d\n", sp->name, wp->setnum, sp->stagenum);

	/*
	 * Start barrier.
	 * The tets thread to get here releases everyone and starts the timer.
	 */
	FUNC14(&funnel);
	threads_ready++;
	if (threads_ready == threads) {
		FUNC15(&funnel);
		if (halting) {
			FUNC10("  all threads ready for process %d, "
				"hit any key to start", FUNC7());
			FUNC5(stdout);
			(void) FUNC6();
		}
		FUNC11(&barrier);
		timer = FUNC8();
	} else {
		FUNC13(&barrier, &funnel);
		FUNC15(&funnel);
	}

	do {
		work_t		*workp;

		/*
		 * Get a buffer from the input queue.
		 * Block if none.
		 * Quit if all work done.
		 */
		FUNC14(&sp->input->mtx);
		while (1) {
			if (sp->work_todo == 0) {
				FUNC15(&sp->input->mtx);
				goto out;
			}
			workp = FUNC1(&(sp->input->queue));
			if (workp != NULL)
				break;
			FUNC0("    %s[%d,%d] todo %d waiting for buffer\n",
				sp->name, wp->setnum, sp->stagenum, sp->work_todo);
			sp->input->waiters++;
			FUNC13(&sp->input->cnd, &sp->input->mtx);
			sp->input->waiters--;
		}
		FUNC3(&(sp->input->queue), workp, link);
		iteration = sp->work_todo--;
		FUNC15(&sp->input->mtx);

		if (is_producer) {
			workp->number = iteration;
			workp->tag = wp->setnum;
		} else {
			if (affinity && current_tag != workp->tag) {
				FUNC4(workp->tag);
				current_tag = workp->tag;
			}
		}

		FUNC0("  %s[%d,%d] todo %d work %p data %p\n",
			sp->name, wp->setnum, sp->stagenum, iteration, workp, workp->data);

		/* Do our stuff with the buffer */
		(void) sp->fn(workp->data, workp->isize);

		/*
		 * Place the buffer on the input queue of the next stage.
		 * Signal waiters if required.
		 */
		FUNC14(&sp->output->mtx);
		FUNC2(&(sp->output->queue), workp, link);
		if (sp->output->waiters) {
			FUNC0("    %s[%d,%d] todo %d signaling work\n",
				sp->name, wp->setnum, sp->stagenum, iteration);
			FUNC12(&sp->output->cnd);
		}
		FUNC15(&sp->output->mtx);

	} while (1);

out:
	FUNC11(&sp->output->cnd);

	FUNC0("Ending %s[%d,%d]\n", sp->name, wp->setnum, sp->stagenum);

	return (void *) iteration;
}