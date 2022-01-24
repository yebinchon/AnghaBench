#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  g_kext_map ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC2(vm_offset_t addr, vm_size_t size)
{
    kern_return_t rval;

    rval = FUNC1(g_kext_map, addr, size);
    FUNC0(rval == KERN_SUCCESS);
}