#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {struct TYPE_8__* kext; struct TYPE_8__* interface; } ;
typedef  TYPE_1__ KXLDObject ;
typedef  TYPE_1__ KXLDKext ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(KXLDKext *kext, KXLDObject *kext_object, 
    KXLDObject *interface_object)
{
    kern_return_t rval = KERN_FAILURE;

    FUNC0(kext);
    FUNC0(kext_object);

    kext->kext = kext_object;

    if (interface_object) {
        kext->interface = interface_object;

        rval = FUNC1(kext->kext);
        FUNC2(rval, finish);
    }
    
    rval = KERN_SUCCESS;
finish:
    return rval;
}