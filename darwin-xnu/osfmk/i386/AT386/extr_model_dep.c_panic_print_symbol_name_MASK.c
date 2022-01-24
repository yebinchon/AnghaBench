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
typedef  int /*<<< orphan*/  vm_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  _mh_execute_header ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC2(vm_address_t search)
{
    /* try searching in the kernel */
    if (FUNC1(&_mh_execute_header, search, "mach_kernel") == 0) {
        /* that failed, now try to search for the right kext */
        FUNC0(search);
    }
}