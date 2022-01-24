#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_mqueue_t ;
struct TYPE_6__ {int /*<<< orphan*/  imq_set_queue; } ;

/* Variables and functions */
 int WQ_ITERATE_BREAK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  mqueue_peek_iterator ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

unsigned
FUNC4(ipc_mqueue_t mq)
{
	int ret;

	FUNC1(mq);

	/*
	 * We may have raced with port destruction where the mqueue is marked
	 * as invalid. In that case, even though we don't have messages, we
	 * have an end-of-life event to deliver.
	 */
	if (!FUNC0(mq))
		return 1;

	ret = FUNC3(&mq->imq_set_queue, NULL,
					 mqueue_peek_iterator);

	FUNC2(mq);

	return (ret == WQ_ITERATE_BREAK);
}