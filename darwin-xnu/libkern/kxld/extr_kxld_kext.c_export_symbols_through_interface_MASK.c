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
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  link_addr; int /*<<< orphan*/ * name; int /*<<< orphan*/ * alias; } ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  int /*<<< orphan*/  KXLDSymtab ;
typedef  TYPE_1__ KXLDSym ;
typedef  int /*<<< orphan*/  KXLDObject ;
typedef  int /*<<< orphan*/  KXLDDict ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  kKxldLogLinking ; 
 int /*<<< orphan*/  kKxldLogWarn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  kxld_sym_is_cxx ; 
 int /*<<< orphan*/  kxld_sym_is_indirect ; 
 int /*<<< orphan*/  kxld_sym_is_obsolete ; 
 int /*<<< orphan*/  kxld_sym_is_undefined ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC9(const KXLDObject *kext,
    const KXLDObject *interface, KXLDDict *defined_symbols_by_name,
    KXLDDict *obsolete_symbols_by_name, KXLDDict *defined_cxx_symbols_by_value)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    const KXLDSymtab *kext_symtab = NULL;
    const KXLDSymtab *interface_symtab = NULL;
    KXLDSym *kext_sym = NULL;
    const KXLDSym *interface_sym = NULL;

    FUNC0(kext);
    FUNC0(interface);

    kext_symtab = FUNC4(kext);
    interface_symtab = FUNC4(interface);

    if (defined_symbols_by_name) {
        /* Add exported symbols */
        (void) FUNC7(&iter, interface_symtab, 
            kxld_sym_is_undefined, FALSE);
        while ((interface_sym = FUNC6(&iter))) {
            kext_sym = FUNC5(kext_symtab, 
                interface_sym->name);
            if (!kext_sym) {
                FUNC2(kKxldLogLinking, kKxldLogWarn,
                    "In interface %s of %s, couldn't find symbol %s\n", 
                    FUNC3(interface), FUNC3(kext),
                    interface_sym->name);
                continue;
            }

            rval = FUNC1(defined_symbols_by_name, 
                kext_sym->name, kext_sym);
            FUNC8(rval, finish);
        }

        /* Add indirect symbols */
        (void) FUNC7(&iter, interface_symtab, 
            kxld_sym_is_indirect, FALSE);
        while ((interface_sym = FUNC6(&iter))) {
            kext_sym = FUNC5(kext_symtab, 
                interface_sym->alias);
            if (!kext_sym) {
                FUNC2(kKxldLogLinking, kKxldLogWarn,
                    "In interface %s of %s, couldn't find indirect symbol %s (%s)\n", 
                    FUNC3(interface), FUNC3(kext),
                    interface_sym->alias, interface_sym->name);
                continue;
            }

            rval = FUNC1(defined_symbols_by_name, 
                interface_sym->name, kext_sym);
            FUNC8(rval, finish);
        }
    }

    /* Add obsolete symbols */
    if (obsolete_symbols_by_name) {
        (void) FUNC7(&iter, interface_symtab, 
            kxld_sym_is_obsolete, FALSE);
        while ((kext_sym = FUNC6(&iter))) {
            rval = FUNC1(obsolete_symbols_by_name, 
                kext_sym->name, kext_sym);
            FUNC8(rval, finish);
        }
    }

    /* Add C++ symbols */
    if (defined_cxx_symbols_by_value) {
        (void) FUNC7(&iter, kext_symtab,
            kxld_sym_is_cxx, FALSE);
        while ((kext_sym = FUNC6(&iter))) {
            rval = FUNC1(defined_cxx_symbols_by_value,
                &kext_sym->link_addr, kext_sym);
            FUNC8(rval, finish);
        }
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}