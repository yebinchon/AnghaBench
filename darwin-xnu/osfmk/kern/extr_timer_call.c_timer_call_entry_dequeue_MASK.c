#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timer_call_t ;
struct TYPE_6__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ mpqueue_head_t ;
struct TYPE_7__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static __inline__ mpqueue_head_t *
FUNC3(
	timer_call_t		entry)
{
	mpqueue_head_t	*old_queue = FUNC0(FUNC1(entry)->queue);

	FUNC2(FUNC1(entry));
	old_queue->count--;

	return old_queue;
}