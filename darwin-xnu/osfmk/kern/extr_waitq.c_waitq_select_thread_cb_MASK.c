#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
struct waitq {scalar_t__ waitq_eventmask; } ;
struct waitq_set {struct waitq wqset_q; } ;
struct TYPE_7__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_1__ wql_wqs; } ;
struct select_thread_ctx {scalar_t__ event; int /*<<< orphan*/ * spl; TYPE_2__* thread; } ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ event64_t ;
struct TYPE_8__ {scalar_t__ wait_event; struct waitq* waitq; } ;

/* Variables and functions */
 scalar_t__ WQL_WQS ; 
 int WQ_ITERATE_CONTINUE ; 
 int WQ_ITERATE_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct waitq*) ; 
 struct waitq* FUNC7 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC8 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC9 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC10 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC11 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC12 (struct waitq*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct waitq*) ; 
 scalar_t__ FUNC14 (struct waitq_link*) ; 

__attribute__((used)) static int FUNC15(struct waitq *waitq, void *ctx,
				  struct waitq_link *link)
{
	struct select_thread_ctx *stctx = (struct select_thread_ctx *)ctx;
	struct waitq_set *wqset;
	struct waitq *wqsetq;
	struct waitq *safeq;
	spl_t s;

	(void)waitq;
	
	thread_t thread = stctx->thread;
	event64_t event = stctx->event;

	if (FUNC14(link) != WQL_WQS)
		return WQ_ITERATE_CONTINUE;

	wqset = link->wql_wqs.wql_set;
	wqsetq = &wqset->wqset_q;

	FUNC0(!FUNC8(waitq));
	FUNC0(!FUNC8(wqsetq));

	FUNC10(wqset);

	s = FUNC1();

	/* find and lock the interrupt-safe waitq the thread is thought to be on */
	safeq = FUNC7(wqsetq);
	FUNC9(safeq);

	FUNC4(thread);

	if ((thread->waitq == wqsetq) && (thread->wait_event == event)) {
		FUNC12(wqsetq, thread);
		if (FUNC6(safeq)) {
			safeq->waitq_eventmask = 0;
		}
		FUNC3(thread);
		FUNC13(safeq);
		FUNC11(wqset);
		/*
		 * thread still locked,
		 * return non-zero to break out of WQS walk
		 */
		*(stctx->spl) = s;
		return WQ_ITERATE_FOUND;
	}

	FUNC5(thread);
	FUNC11(wqset);
	FUNC13(safeq);
	FUNC2(s);

	return WQ_ITERATE_CONTINUE;
}