#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct waitq {int dummy; } ;
struct waitq_set {scalar_t__ wqset_id; int /*<<< orphan*/  wqset_prepost_hook; struct waitq wqset_q; } ;
struct waitq_select_args {scalar_t__* nthreads; scalar_t__ max_threads; scalar_t__ event; int /*<<< orphan*/  reserved_preposts; scalar_t__ threadq; struct waitq* waitq; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_2__ wql_setid; TYPE_1__ wql_wqs; } ;

/* Variables and functions */
 scalar_t__ NO_EVENT64 ; 
 scalar_t__ WQL_WQS ; 
 int WQ_ITERATE_CONTINUE ; 
 int WQ_ITERATE_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct waitq_select_args*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct waitq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct waitq_set*) ; 
 scalar_t__ FUNC6 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq_set*) ; 
 int FUNC9 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq_set*,struct waitq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct waitq_link*) ; 

__attribute__((used)) static int FUNC12(struct waitq *waitq, void *ctx,
				struct waitq_link *link)
{
	int ret = WQ_ITERATE_CONTINUE;
	struct waitq_select_args args = *((struct waitq_select_args *)ctx);
	struct waitq_set *wqset;

	(void)waitq;
	FUNC0(FUNC11(link) == WQL_WQS);

	wqset = link->wql_wqs.wql_set;
	args.waitq = &wqset->wqset_q;

	FUNC0(!FUNC3(waitq));
	FUNC0(!FUNC3(&wqset->wqset_q));

	FUNC7(wqset);
	/*
	 * verify that the link wasn't invalidated just before
	 * we were able to take the lock.
	 */
	if (wqset->wqset_id != link->wql_setid.id)
		goto out_unlock;

	FUNC0(FUNC9(wqset));

	/*
	 * Find any threads waiting on this wait queue set,
	 * and recurse into any waitq set to which this set belongs.
	 */
	FUNC1(&args);

	if (*(args.nthreads) > 0 ||
	    (args.threadq && !FUNC2(args.threadq))) {
		/* at least 1 thread was selected and returned: don't prepost */
		if (args.max_threads > 0 &&
		    *(args.nthreads) >= args.max_threads) {
			/* break out of the setid walk */
			ret = WQ_ITERATE_FOUND;
		}
		goto out_unlock;
	} else {
		/*
		 * No thread selected: prepost 'waitq' to 'wqset'
		 * if wqset can handle preposts and the event is set to 0.
		 * We also make sure to not post waitq sets to other sets.
		 *
		 * If the set doesn't support preposts, but does support
		 * prepost callout/hook interaction, invoke the predefined
		 * callout function and pass the set's 'prepost_hook.' This
		 * could potentially release another thread to handle events.
		 */
		if (args.event == NO_EVENT64) {
			if (FUNC5(wqset)) {
				FUNC10(
					wqset, waitq, args.reserved_preposts);
			} else if (FUNC6(wqset)) {
				FUNC4(
					wqset->wqset_prepost_hook, waitq, 0);
			}
		}
	}

out_unlock:
	FUNC8(wqset);
	return ret;
}