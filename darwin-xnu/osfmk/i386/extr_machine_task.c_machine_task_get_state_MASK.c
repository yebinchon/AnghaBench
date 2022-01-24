#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ds32; int /*<<< orphan*/  ds64; } ;
struct TYPE_7__ {int flavor; void* count; } ;
struct TYPE_9__ {TYPE_2__ uds; TYPE_1__ dsh; } ;
typedef  TYPE_3__ x86_debug_state_t ;
typedef  int /*<<< orphan*/  x86_debug_state64_t ;
typedef  int /*<<< orphan*/  x86_debug_state32_t ;
typedef  int /*<<< orphan*/ * thread_state_t ;
typedef  TYPE_4__* task_t ;
typedef  void* mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_10__ {int /*<<< orphan*/ * task_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
#define  x86_DEBUG_STATE 130 
#define  x86_DEBUG_STATE32 129 
 void* x86_DEBUG_STATE32_COUNT ; 
#define  x86_DEBUG_STATE64 128 
 void* x86_DEBUG_STATE64_COUNT ; 
 void* x86_DEBUG_STATE_COUNT ; 

kern_return_t 	
FUNC4(task_t task, 
		int flavor, 
		thread_state_t state,
		mach_msg_type_number_t *state_count)
{
	switch (flavor) {
		case x86_DEBUG_STATE32:
		{
			x86_debug_state32_t *tstate = (x86_debug_state32_t*) state;

			if ((FUNC3(task)) || (*state_count != x86_DEBUG_STATE32_COUNT)) {
				return KERN_INVALID_ARGUMENT;
			}

			if (task->task_debug == NULL) {
				FUNC0(state, sizeof(*tstate));		
			} else {
				FUNC1((x86_debug_state32_t*) task->task_debug, tstate, TRUE);
			} 

			return KERN_SUCCESS;
		}
		case x86_DEBUG_STATE64:
		{
			x86_debug_state64_t *tstate = (x86_debug_state64_t*) state;

			if ((!FUNC3(task)) || (*state_count != x86_DEBUG_STATE64_COUNT)) {
				return KERN_INVALID_ARGUMENT;
			}

			if (task->task_debug == NULL) {
				FUNC0(state, sizeof(*tstate));		
			} else {
				FUNC2((x86_debug_state64_t*) task->task_debug, tstate, TRUE);
			} 

			return KERN_SUCCESS;
		}
		case x86_DEBUG_STATE:
		{
			x86_debug_state_t   *tstate = (x86_debug_state_t*)state;

			if (*state_count != x86_DEBUG_STATE_COUNT)
				return(KERN_INVALID_ARGUMENT);

			if (FUNC3(task)) {
				tstate->dsh.flavor = x86_DEBUG_STATE64;
				tstate->dsh.count  = x86_DEBUG_STATE64_COUNT;

				if (task->task_debug == NULL) {
					FUNC0(&tstate->uds.ds64, sizeof(tstate->uds.ds64));
				} else {
					FUNC2((x86_debug_state64_t*)task->task_debug, &tstate->uds.ds64, TRUE);
				}
			} else {
				tstate->dsh.flavor = x86_DEBUG_STATE32;
				tstate->dsh.count  = x86_DEBUG_STATE32_COUNT;

				if (task->task_debug == NULL) {
					FUNC0(&tstate->uds.ds32, sizeof(tstate->uds.ds32));
				} else {
					FUNC1((x86_debug_state32_t*)task->task_debug, &tstate->uds.ds32, TRUE);
				}
			}
			
			return KERN_SUCCESS;
		}
		default:
		{
			return KERN_INVALID_ARGUMENT;
		}
	}
}