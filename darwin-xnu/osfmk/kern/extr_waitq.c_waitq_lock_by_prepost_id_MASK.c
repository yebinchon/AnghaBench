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
struct waitq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq*) ; 
 struct wq_prepost* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wq_prepost*) ; 

struct waitq *FUNC9(uint64_t wqp_id)
{
	struct waitq *wq = NULL;
	struct wq_prepost *wqp;

	FUNC1();
	wqp = FUNC7(wqp_id);
	if (wqp) {
		wq = wqp->wqp_wq.wqp_wq_ptr;

		FUNC0(!FUNC3(wq));

		FUNC4(wq);
		FUNC8(wqp);

		if (!FUNC6(wq)) {
			/* someone already tore down this waitq! */
			FUNC5(wq);
			FUNC2();
			return NULL;
		}
	}
	FUNC2();
	return wq;
}