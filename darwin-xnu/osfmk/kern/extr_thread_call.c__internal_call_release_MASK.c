#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_call_t ;
struct TYPE_5__ {int /*<<< orphan*/  q_link; } ;
struct TYPE_6__ {int tc_flags; TYPE_1__ tc_call; } ;

/* Variables and functions */
 size_t INTERNAL_CALL_COUNT ; 
 int THREAD_CALL_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* internal_call_storage ; 
 int /*<<< orphan*/  thread_call_internal_queue ; 
 int /*<<< orphan*/  thread_call_internal_queue_count ; 

__attribute__((used)) static __inline__ void
FUNC2(thread_call_t call)
{
	if (call >= internal_call_storage &&
	    call < &internal_call_storage[INTERNAL_CALL_COUNT]) {
		FUNC0((call->tc_flags & THREAD_CALL_ALLOC) == 0);
		FUNC1(&thread_call_internal_queue, &call->tc_call.q_link);
		thread_call_internal_queue_count++;
	}
}