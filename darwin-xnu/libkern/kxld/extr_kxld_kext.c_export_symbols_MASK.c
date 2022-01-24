#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {int /*<<< orphan*/  link_addr; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  TYPE_1__ KXLDSym ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  int /*<<< orphan*/  KXLDDict ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  kxld_sym_is_exported ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC6(const KXLDObject *kext, KXLDDict *defined_symbols_by_name,
    KXLDDict *defined_cxx_symbols_by_value)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = NULL;

    (void) FUNC4(&iter, FUNC1(kext), 
        kxld_sym_is_exported, FALSE);
    while ((sym = FUNC3(&iter))) {
        if (defined_symbols_by_name) {
            rval = FUNC0(defined_symbols_by_name, sym->name, sym);
            FUNC5(rval, finish);
        }

        if (FUNC2(sym) && defined_cxx_symbols_by_value) {
            rval = FUNC0(defined_cxx_symbols_by_value,
                &sym->link_addr, sym);
            FUNC5(rval, finish);
        }
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}