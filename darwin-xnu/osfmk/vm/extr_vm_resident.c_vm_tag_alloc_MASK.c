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
typedef  scalar_t__ vm_tag_t ;
struct TYPE_6__ {int flags; scalar_t__ tag; } ;
typedef  TYPE_1__ vm_allocation_site_t ;

/* Variables and functions */
 scalar_t__ VM_KERN_MEMORY_NONE ; 
 int VM_TAG_BT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_allocation_sites_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__**) ; 
 scalar_t__ FUNC4 () ; 

vm_tag_t
FUNC5(vm_allocation_site_t * site)
{
    vm_tag_t tag;
    vm_allocation_site_t * releasesite;

    if (VM_TAG_BT & site->flags)
    {
		tag = FUNC4();
		if (VM_KERN_MEMORY_NONE != tag) return (tag);
    }

    if (!site->tag) 
    {
		releasesite = NULL;
		FUNC1(&vm_allocation_sites_lock);
		FUNC3(site, &releasesite);
		FUNC2(&vm_allocation_sites_lock);
        if (releasesite) FUNC0(releasesite);
    }

    return (site->tag);
}