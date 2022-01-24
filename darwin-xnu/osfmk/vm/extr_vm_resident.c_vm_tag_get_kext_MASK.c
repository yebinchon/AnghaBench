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
typedef  size_t vm_tag_t ;
typedef  int /*<<< orphan*/  vm_size_t ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ vm_allocation_site_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int VM_TAG_KMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__** vm_allocation_sites ; 
 int /*<<< orphan*/  vm_allocation_sites_lock ; 

uint32_t
FUNC3(vm_tag_t tag, char * name, vm_size_t namelen)
{
    vm_allocation_site_t * site;
    uint32_t               kmodId;

    kmodId = 0;
    FUNC1(&vm_allocation_sites_lock);
    if ((site = vm_allocation_sites[tag]))
    {
        if (VM_TAG_KMOD & site->flags)
        {
            kmodId = FUNC0(site, name, namelen);
        }
    }
    FUNC2(&vm_allocation_sites_lock);

    return (kmodId);
}