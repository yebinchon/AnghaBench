#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_16__ {scalar_t__ nitems; } ;
struct TYPE_18__ {TYPE_11__ vtables; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ KXLDVTable ;
typedef  TYPE_2__ const KXLDKext ;
typedef  TYPE_2__ const KXLDDict ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  finish ; 
 TYPE_1__* FUNC2 (TYPE_11__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t 
FUNC5(KXLDKext *kext, const KXLDDict *defined_cxx_symbols,
    const KXLDDict *defined_symbols, KXLDDict *vtables)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDVTable *vtable = NULL;
    u_int i = 0;

    FUNC0(kext);
    FUNC0(defined_symbols);
    FUNC0(defined_cxx_symbols);
    FUNC0(vtables);

    rval = FUNC1(kext, defined_cxx_symbols, defined_symbols);
    FUNC4(rval, finish);

    for (i = 0; i < kext->vtables.nitems; ++i) {
        vtable = FUNC2(&kext->vtables, i);

        rval = FUNC3(vtables, vtable->name, vtable);
        FUNC4(rval, finish);
    }
    
    rval = KERN_SUCCESS;
finish:
    return rval;
}