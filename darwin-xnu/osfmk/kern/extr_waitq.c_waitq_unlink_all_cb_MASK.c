#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wq_unlink_ctx {struct waitq_set* unlink_wqset; struct waitq* unlink_wq; } ;
struct waitq_set {int /*<<< orphan*/  wqset_prepost_id; int /*<<< orphan*/  wqset_q; } ;
struct TYPE_2__ {struct waitq_set* wql_set; } ;
struct waitq_link {TYPE_1__ wql_wqs; } ;
struct waitq {scalar_t__ waitq_prepost_id; } ;

/* Variables and functions */
 scalar_t__ WQL_LINK ; 
 scalar_t__ WQL_WQS ; 
 int WQ_ITERATE_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  waitq_unlink_prepost_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct wq_unlink_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq_link*) ; 
 scalar_t__ FUNC8 (struct waitq_link*) ; 
 scalar_t__ FUNC9 (struct waitq_link*) ; 

__attribute__((used)) static int FUNC10(struct waitq *waitq, void *ctx,
			       struct waitq_link *link)
{
	(void)waitq;
	(void)ctx;
	if (FUNC9(link) == WQL_LINK && FUNC8(link))
		FUNC7(link);

	if (FUNC9(link) == WQL_WQS) {
		struct waitq_set *wqset;
		struct wq_unlink_ctx ulctx;

		/*
		 * When destroying the waitq, take the time to clear out any
		 * preposts it may have made. This could potentially save time
		 * on the IPC send path which would otherwise have to iterate
		 * over lots of dead port preposts.
		 */
		if (waitq->waitq_prepost_id == 0)
			goto out;

		wqset = link->wql_wqs.wql_set;
		FUNC0(wqset != NULL);
		FUNC0(!FUNC1(&wqset->wqset_q));

		FUNC3(wqset);

		if (!FUNC2(wqset)) {
			/* someone raced us to teardown */
			goto out_unlock;
		}
		if (!FUNC4(wqset))
			goto out_unlock;

		ulctx.unlink_wq = waitq;
		ulctx.unlink_wqset = wqset;
		(void)FUNC6(wqset->wqset_prepost_id, &ulctx,
					 waitq_unlink_prepost_cb);
out_unlock:
		FUNC5(wqset);
	}

out:
	return WQ_ITERATE_CONTINUE;
}