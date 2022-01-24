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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  waitq_prepost; } ;
struct waitq_set {TYPE_1__ wqset_q; scalar_t__ wqset_prepost_id; int /*<<< orphan*/  wqset_id; } ;
typedef  int /*<<< orphan*/  spl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC5 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC6 (struct waitq_set*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wqset_clear_prepost_chain_cb ; 

void FUNC9(struct waitq_set *wqset)
{
	uint64_t prepost_id;
	spl_t spl;

	FUNC0(FUNC6(wqset));

	if (!wqset->wqset_q.waitq_prepost || !wqset->wqset_prepost_id)
		return;

	FUNC8("Clearing all preposted queues on waitq_set: 0x%llx",
		wqset->wqset_id);

	if (FUNC3(&wqset->wqset_q))
		spl = FUNC1();
	FUNC4(wqset);
	prepost_id = wqset->wqset_prepost_id;
	wqset->wqset_prepost_id = 0;
	FUNC5(wqset);
	if (FUNC3(&wqset->wqset_q))
		FUNC2(spl);

	/* drop / unlink all the prepost table objects */
	if (prepost_id)
		(void)FUNC7(prepost_id, NULL,
					 wqset_clear_prepost_chain_cb);
}