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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_state_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_6__ {scalar_t__ threadstate_sz; int /*<<< orphan*/  entry_point; scalar_t__* threadstate; scalar_t__ is_64bit_addr; int /*<<< orphan*/  is_64bit_data; } ;
typedef  TYPE_2__ load_result_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_flag; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_VM_MIN_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ P_LP64 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(task_t task, proc_t p, thread_t thread, load_result_t *result)
{
	int ret;

	FUNC3(task, MACH_VM_MIN_ADDRESS, 0);
	FUNC2(task, result->is_64bit_addr, result->is_64bit_data);
	if (result->is_64bit_addr) {
		FUNC1(P_LP64, &p->p_flag);
	} else {
		FUNC0(~((uint32_t)P_LP64), &p->p_flag);
	}

	ret = FUNC6(thread);
	if (ret != KERN_SUCCESS) {
		return ret;
	}

	if (result->threadstate) {
		uint32_t *ts = result->threadstate;
		uint32_t total_size = result->threadstate_sz;

		while (total_size > 0) {
			uint32_t flavor = *ts++;
			uint32_t size = *ts++;

			ret = FUNC5(thread, flavor, (thread_state_t)ts, size);
			if (ret) {
				return ret;
			}
			ts += size;
			total_size -= (size + 2) * sizeof(uint32_t);
		}
	}

	FUNC4(thread, result->entry_point);

	return KERN_SUCCESS;
}