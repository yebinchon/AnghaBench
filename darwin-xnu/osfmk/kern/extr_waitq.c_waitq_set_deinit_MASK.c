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
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ waitq_eventmask; scalar_t__ waitq_isvalid; scalar_t__ waitq_prepost; scalar_t__ waitq_fifo; } ;
struct waitq_set {scalar_t__ wqset_id; scalar_t__ wqset_prepost_id; TYPE_2__ wqset_q; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct waitq_link {TYPE_1__ wql_setid; } ;

/* Variables and functions */
 scalar_t__ WQL_WQS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct waitq_link* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct waitq_link*) ; 
 int /*<<< orphan*/  FUNC12 (struct waitq_link*) ; 
 int FUNC13 (struct waitq_link*) ; 
 scalar_t__ FUNC14 (struct waitq_link*) ; 
 int /*<<< orphan*/  wqset_clear_prepost_chain_cb ; 

void FUNC15(struct waitq_set *wqset)
{
	struct waitq_link *link = NULL;
	uint64_t set_id, prepost_id;

	if (!FUNC8(wqset))
		FUNC2("trying to de-initialize an invalid wqset @%p", wqset);

	FUNC0(!FUNC3(&wqset->wqset_q));

	FUNC4(wqset);

	set_id = wqset->wqset_id;

	if (FUNC7(wqset) || set_id == 0) {

		/* grab the set's link object */
		link = FUNC10(set_id);
		if (link) {
			FUNC11(link);
		}
		/* someone raced us to deinit */
		if (!link || wqset->wqset_id != set_id || set_id != link->wql_setid.id) {
			if (link) {
				FUNC12(link);
			}
			FUNC5(wqset);
			return;
		}

		/* the link should be a valid link object at this point */
		FUNC0(link != NULL && FUNC14(link) == WQL_WQS);

		wqset->wqset_id = 0;
	}

	/*
	 * This set may have a lot of preposts, or may have been a member of
	 * many other sets. To minimize spinlock hold times, we clear out the
	 * waitq set data structure under the lock-hold, but don't clear any
	 * table objects. We keep handles to the prepost and set linkage
	 * objects and free those outside the critical section.
	 */
	prepost_id = 0;
	if (wqset->wqset_q.waitq_prepost && wqset->wqset_prepost_id) {
		FUNC0(link != NULL);
		prepost_id = wqset->wqset_prepost_id;
	}
	/* else { TODO: notify kqueue subsystem? } */
	wqset->wqset_prepost_id = 0;

	wqset->wqset_q.waitq_fifo = 0;
	wqset->wqset_q.waitq_prepost = 0;
	wqset->wqset_q.waitq_isvalid = 0;

	/* don't clear the 'waitq_irq' bit: it's used in locking! */
	wqset->wqset_q.waitq_eventmask = 0;

	FUNC6(&wqset->wqset_q);
	/* wqset->wqset_q unlocked and set links deallocated */


	if (link) {
		/*
		 * walk_waitq_links may race with us for access to the waitq set.
		 * If walk_waitq_links has a reference to the set, then we should wait
		 * until the link's refcount goes to 1 (our reference) before we exit
		 * this function. That way we ensure that the waitq set memory will
		 * remain valid even though it's been cleared out.
		 */
		while (FUNC13(link) > 1)
			FUNC1(1);
		FUNC12(link);
	}

	/* drop / unlink all the prepost table objects */
	/* JMM - can this happen before the delay? */
	if (prepost_id)
		(void)FUNC9(prepost_id, NULL,
					 wqset_clear_prepost_chain_cb);
}