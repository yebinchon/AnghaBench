#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_shared_region_slide_info_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_9__ {TYPE_1__* slide_info_entry; } ;
struct TYPE_8__ {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(vm_shared_region_slide_info_t si, vm_offset_t vaddr, mach_vm_offset_t uservaddr, uint32_t pageIndex)
{
	if (si->slide_info_entry->version == 1) {
		return FUNC0(si, vaddr, pageIndex);
	} else if (si->slide_info_entry->version == 2) {
		return FUNC1(si, vaddr, pageIndex);
    } else if (si->slide_info_entry->version == 3) {
		return FUNC2(si, vaddr, uservaddr, pageIndex);
    } else if (si->slide_info_entry->version == 4) {
        return FUNC3(si, vaddr, pageIndex);
	} else {
        return KERN_FAILURE;
    }
}