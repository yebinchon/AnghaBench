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
struct TYPE_2__ {struct waitq* wqp_wq_ptr; } ;
struct wq_prepost {TYPE_1__ wqp_wq; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*,struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC7 (struct waitq*) ; 
 struct wq_prepost* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wq_prepost*) ; 

void FUNC10(uint64_t wqp_id, struct waitq_set *wqset)
{
	struct wq_prepost *wqp;

	FUNC1();
	wqp = FUNC8(wqp_id);
	if (wqp) {
		struct waitq *wq;

		wq = wqp->wqp_wq.wqp_wq_ptr;

		/*
		 * lock the waitq, then release our prepost ID reference, then
		 * unlink the waitq from the wqset: this ensures that we don't
		 * hold a prepost ID reference during the unlink, but we also
		 * complete the unlink operation atomically to avoid a race
		 * with waitq_unlink[_all].
		 */
		FUNC0(!FUNC3(wq));

		FUNC4(wq);
		FUNC9(wqp);

		if (!FUNC7(wq)) {
			/* someone already tore down this waitq! */
			FUNC6(wq);
			FUNC2();
			return;
		}

		/* this _may_ drop the wq lock, but that's OK */
		FUNC5(wq, wqset);

		FUNC6(wq);
	}
	FUNC2();
	return;
}