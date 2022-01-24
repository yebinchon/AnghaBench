#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_shared_region_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_6__ {int sr_ref_count; struct TYPE_6__* sr_mem_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

ipc_port_t
FUNC3(
	vm_shared_region_t	shared_region)
{
	FUNC0(
		("shared_region: -> mem_entry(%p)\n",
		 (void *)FUNC1(shared_region)));
	FUNC2(shared_region->sr_ref_count > 1);
	FUNC0(
		("shared_region: mem_entry(%p) <- %p\n",
		 (void )FUNC1(shared_region),
		 (void *)FUNC1(shared_region->sr_mem_entry)));
	return shared_region->sr_mem_entry;
}