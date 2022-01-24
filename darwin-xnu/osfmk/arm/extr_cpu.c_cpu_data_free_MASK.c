#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_4__ {scalar_t__ fiqstack_top; scalar_t__ intstack_top; int /*<<< orphan*/  cpu_processor; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 TYPE_1__ BootCpuData ; 
 scalar_t__ FIQSTACK_SIZE ; 
 scalar_t__ INTSTACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC3(cpu_data_t *cpu_data_ptr)
{
        if (cpu_data_ptr == &BootCpuData)
                return;

	FUNC0( cpu_data_ptr->cpu_processor);
	FUNC1( (void *)(cpu_data_ptr->intstack_top - INTSTACK_SIZE), INTSTACK_SIZE);
	FUNC1( (void *)(cpu_data_ptr->fiqstack_top - FIQSTACK_SIZE), FIQSTACK_SIZE);
	FUNC2(kernel_map, (vm_offset_t)cpu_data_ptr, sizeof(cpu_data_t));
}