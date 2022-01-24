#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kxld_addr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_19__ {int /*<<< orphan*/  kext; } ;
typedef  TYPE_1__ const KXLDKext ;
typedef  TYPE_1__ const KXLDDict ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  finish ; 
 scalar_t__ isSplitKext ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 

kern_return_t
FUNC10(KXLDKext *kext,
                   kxld_addr_t link_address,
                   KXLDDict *patched_vtables,
                   const KXLDDict *defined_symbols,
                   const KXLDDict *obsolete_symbols,
                   const KXLDDict *defined_cxx_symbols)
{
    kern_return_t rval = KERN_FAILURE;

    FUNC0(kext);
    FUNC0(patched_vtables);
    FUNC0(defined_symbols);
    FUNC0(obsolete_symbols);

    /* Kexts that are being relocated need symbols indexed by value for vtable
     * creation and patching. Note that we don't need to index by value for
     * dependencies that have already been linked because their symbols are
     * already in the global cxx value table. It's important to index the
     * symbols by value before we relocate the symbols because the vtable
     * entries will still have unrelocated values.
     */
    rval = FUNC2(kext->kext);
    FUNC7(rval, finish);

    rval = FUNC3(kext->kext);
    FUNC7(rval, finish);

    rval = FUNC5(kext->kext, link_address);
    FUNC7(rval, finish);

    rval = FUNC8(kext, defined_symbols, obsolete_symbols);
    FUNC7(rval, finish);

    rval = FUNC1(kext, defined_cxx_symbols, /* defined_symbols */ NULL);
    FUNC7(rval, finish);

    if (isSplitKext == FALSE) {
        rval = FUNC6(kext, patched_vtables, defined_symbols);
        FUNC7(rval, finish);
    }
 
    rval = FUNC9(kext);
    FUNC7(rval, finish);

    rval = FUNC4(kext->kext, patched_vtables);
    FUNC7(rval, finish);

    rval = KERN_SUCCESS;
finish:
   return rval;
}