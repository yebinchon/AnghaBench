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
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_2__ {int /*<<< orphan*/  ith_messages; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

boolean_t FUNC3(
	ipc_kmsg_t kmsg)
{
	ipc_kmsg_queue_t queue = &(FUNC0()->ith_messages);
	boolean_t first = FUNC2(queue);

	FUNC1(queue, kmsg);
	return first;
}