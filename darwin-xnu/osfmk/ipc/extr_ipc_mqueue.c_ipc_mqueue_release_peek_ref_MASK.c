#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_mqueue_t ;
struct TYPE_7__ {int /*<<< orphan*/  imq_wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(ipc_mqueue_t mq)
{
	FUNC0(!FUNC2(mq));
	FUNC0(FUNC1(mq));

	/*
	 * clear any preposts this mq may have generated
	 * (which would cause subsequent immediate wakeups)
	 */
	FUNC5(&mq->imq_wait_queue);

	FUNC3(mq);

	/*
	 * release the port reference: we need to do this outside the lock
	 * because we might be holding the last port reference!
	 **/
	FUNC4(mq);
}