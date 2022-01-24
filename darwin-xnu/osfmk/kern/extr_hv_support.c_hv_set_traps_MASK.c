#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  size_t hv_trap_type_t ;
struct TYPE_3__ {scalar_t__ trap_count; int /*<<< orphan*/  const* traps; } ;
typedef  TYPE_1__ hv_trap_table_t ;
typedef  int /*<<< orphan*/  hv_trap_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  hv_support_lck_mtx ; 
 TYPE_1__* hv_trap_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(hv_trap_type_t trap_type, const hv_trap_t *traps,
	unsigned trap_count)
{
	hv_trap_table_t *trap_table = &hv_trap_table[trap_type];
	kern_return_t kr = KERN_FAILURE;

	FUNC1(hv_support_lck_mtx);
	if (trap_table->trap_count == 0) {	
		trap_table->traps = traps;
		FUNC0();
		trap_table->trap_count = trap_count;
		kr = KERN_SUCCESS;
	}
	FUNC2(hv_support_lck_mtx);

	return kr;
}