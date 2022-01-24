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
typedef  int uint32_t ;
typedef  TYPE_1__* kern_allocation_name_t ;
struct TYPE_6__ {int refcount; int subtotalscount; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ MACH_MEMORY_INFO_NAME_MAX_LEN ; 
 int VM_TAG_NAME_LEN_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC5 (char const*,scalar_t__) ; 

kern_allocation_name_t
FUNC6(const char * name, uint32_t subtotalscount)
{
    uint32_t namelen;

    namelen = (uint32_t) FUNC5(name, MACH_MEMORY_INFO_NAME_MAX_LEN - 1);

    kern_allocation_name_t allocation;
    allocation = FUNC3(FUNC1(namelen, subtotalscount));
    FUNC2(allocation, FUNC1(namelen, subtotalscount));

    allocation->refcount       = 1;
    allocation->subtotalscount = subtotalscount;
    allocation->flags          = (namelen << VM_TAG_NAME_LEN_SHIFT);
    FUNC4(FUNC0(allocation), name, namelen + 1);

    return (allocation);
}