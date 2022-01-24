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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct wq_prepost {TYPE_1__ wqp_prepostid; } ;
struct wq_it_ctx {int (* it ) (int /*<<< orphan*/ ,struct waitq*,struct waitq_set*) ;int /*<<< orphan*/  ctx; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;

/* Variables and functions */
 int WQ_ITERATE_BREAK ; 
 int WQ_ITERATE_BREAK_KEEP_LOCKED ; 
 int WQ_ITERATE_DROPPED ; 
 int WQ_ITERATE_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct waitq*,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 scalar_t__ FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 struct wq_prepost* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wq_prepost*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct waitq_set*,struct wq_prepost*,int /*<<< orphan*/ ,struct waitq*) ; 
 int /*<<< orphan*/  FUNC11 (struct wq_prepost*) ; 

__attribute__((used)) static int FUNC12(struct waitq_set *wqset, void *ctx,
				    struct wq_prepost *wqp, struct waitq *waitq)
{
	struct wq_it_ctx *wctx = (struct wq_it_ctx *)(ctx);
	uint64_t wqp_id;
	int ret;

	(void)wqp;

	/*
	 * This is a bit tricky. The 'wqset' is locked, but the 'waitq' is not.
	 * Taking the 'waitq' lock is a lock order violation, so we need to be
	 * careful. We also must realize that we may have taken a reference to
	 * the 'wqp' just as the associated waitq was being torn down (or
	 * clearing all its preposts) - see waitq_clear_prepost_locked(). If
	 * the 'wqp' is valid and we can get the waitq lock, then we are good
	 * to go. If not, we need to back off, check that the 'wqp' hasn't
	 * been invalidated, and try to re-take the locks.
	 */
	FUNC0(!FUNC3(waitq));

	if (FUNC4(waitq))
		goto call_iterator;

	if (!FUNC11(wqp))
		return WQ_ITERATE_RESTART;

	/* We are passed a prepost object with a reference on it. If neither
	 * the waitq set nor the waitq require interrupts disabled, then we
	 * may block on the delay(1) call below. We can't hold a prepost
	 * object reference while blocking, so we have to give that up as well
	 * and re-acquire it when we come back.
	 */
	wqp_id = wqp->wqp_prepostid.id;
	FUNC9(wqp);
	FUNC6(wqset);
	FUNC10("dropped set:%p lock waiting for wqp:%p (0x%llx -> wq:%p)",
		wqset, wqp, wqp->wqp_prepostid.id, waitq);
	FUNC1(1);
	FUNC5(wqset);
	wqp = FUNC8(wqp_id);
	if (!wqp)
		/* someone cleared preposts while we slept! */
		return WQ_ITERATE_DROPPED;

	/*
	 * TODO:
	 * This differs slightly from the logic in ipc_mqueue.c:
	 * ipc_mqueue_receive_on_thread(). There, if the waitq lock
	 * can't be obtained, the prepost link is placed on the back of
	 * the chain, and the iteration starts from the beginning. Here,
	 * we just restart from the beginning.
	 */
	return WQ_ITERATE_RESTART;

call_iterator:
	if (!FUNC11(wqp)) {
		ret = WQ_ITERATE_RESTART;
		goto out_unlock;
	}

	/* call the external callback */
	ret = wctx->it(wctx->ctx, waitq, wqset);

	if (ret == WQ_ITERATE_BREAK_KEEP_LOCKED) {
		ret = WQ_ITERATE_BREAK;
		goto out;
	}

out_unlock:
	FUNC7(waitq);
out:
	return ret;
}