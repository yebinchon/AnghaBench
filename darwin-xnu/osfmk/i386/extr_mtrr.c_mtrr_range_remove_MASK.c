#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ refcnt; } ;
typedef  TYPE_1__ mtrr_var_range_t ;
typedef  int kern_return_t ;
typedef  int /*<<< orphan*/  addr64_t ;
struct TYPE_6__ {unsigned int var_count; TYPE_1__* var_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int KERN_FAILURE ; 
 int KERN_NOT_SUPPORTED ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ mtrr_initialized ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__ mtrr_state ; 
 int /*<<< orphan*/  mtrr_update_action ; 
 int /*<<< orphan*/  mtrr_update_setup ; 
 int /*<<< orphan*/  mtrr_update_teardown ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC7(addr64_t address, uint64_t length, uint32_t type)
{
	mtrr_var_range_t * vr;
	int                result = KERN_FAILURE;
	int                cpu_update = 0;
	unsigned int       i;

	FUNC0("mtrr_range_remove base = 0x%llx, size = 0x%llx, type = %d\n",
            address, length, type);

	if (mtrr_initialized == FALSE) {
		return KERN_NOT_SUPPORTED;
	}

	FUNC1();

	for (i = 0; i < mtrr_state.var_count; i++) {
		vr = &mtrr_state.var_range[i];

		if (vr->refcnt &&
		    FUNC6(vr, address, length, type) > 0) {
			/* found specified variable range */
			if (--mtrr_state.var_range[i].refcnt == 0) {
				FUNC5(vr, address, length, type, 0);
				cpu_update = 1;
			}
			result = KERN_SUCCESS;
			break;
		}
	}

	if (cpu_update) {
		FUNC3(mtrr_update_setup,
			      mtrr_update_action,
			      mtrr_update_teardown, NULL);
		result = KERN_SUCCESS;
	}

#if MTRR_DEBUG
	mtrr_msr_dump();
#endif

	FUNC2();

	return result;
}