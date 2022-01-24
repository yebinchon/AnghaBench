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
typedef  int /*<<< orphan*/  ipc_kmsg_t ;
typedef  int /*<<< orphan*/ * ipc_kmsg_queue_t ;
struct TYPE_2__ {int /*<<< orphan*/  ith_messages; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKM_NULL ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	ipc_kmsg_queue_t queue = &(FUNC0()->ith_messages);
	ipc_kmsg_t kmsg;

	/*
	 * must leave kmsg in queue while cleaning it to assure
	 * no nested calls recurse into here.
	 */
	while ((kmsg = FUNC3(queue)) != IKM_NULL) {
		FUNC1(kmsg);
		FUNC4(queue, kmsg);
		FUNC2(kmsg);
	}
}