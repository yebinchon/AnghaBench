#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ vtables_created; TYPE_2__ vtables; int /*<<< orphan*/  kext; } ;
typedef  int /*<<< orphan*/  KXLDVTable ;
typedef  int /*<<< orphan*/  KXLDSymtabIterator ;
typedef  int /*<<< orphan*/  KXLDSymtab ;
typedef  int /*<<< orphan*/  KXLDSym ;
typedef  TYPE_1__ KXLDKext ;
typedef  int /*<<< orphan*/  KXLDDict ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kxld_sym_is_super_metaclass_pointer ; 
 int /*<<< orphan*/  kxld_sym_is_vtable ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t 
FUNC12(KXLDKext *kext, const KXLDDict *defined_cxx_symbols,
    const KXLDDict *defined_symbols)
{
    kern_return_t rval = KERN_FAILURE;
    const KXLDSymtab *symtab = NULL;
    KXLDSymtabIterator iter;
    KXLDSym *sym = NULL;
    KXLDSym *vtable_sym = NULL;
    KXLDSym *meta_vtable_sym = NULL;
    KXLDVTable *vtable = NULL;
    KXLDVTable *meta_vtable = NULL;
    u_int i = 0;
    u_int nvtables = 0;

    if (kext->vtables_created) {
        rval = KERN_SUCCESS;
        goto finish;
    }

    symtab = FUNC4(kext->kext);

    if (FUNC5(kext->kext)) {
        /* Create a vtable object for every vtable symbol */
        FUNC8(&iter, symtab, kxld_sym_is_vtable, FALSE);
        nvtables = FUNC7(&iter);
    } else {
        /* We walk over the super metaclass pointer symbols because classes
         * with them are the only ones that need patching.  Then we double the
         * number of vtables we're expecting, because every pointer will have a
         * class vtable and a MetaClass vtable.
         */
        FUNC8(&iter, symtab, 
            kxld_sym_is_super_metaclass_pointer, FALSE);
        nvtables = FUNC7(&iter) * 2;
    }

    rval = FUNC2(&kext->vtables, sizeof(KXLDVTable), nvtables);
    FUNC11(rval, finish);

    while ((sym = FUNC6(&iter))) {
        if (FUNC5(kext->kext)) {
            vtable_sym = sym;
            meta_vtable_sym = NULL;
            meta_vtable = NULL;
        } else {
            rval = FUNC0(kext, defined_symbols, sym,
                &vtable_sym, &meta_vtable_sym);
            FUNC11(rval, finish);
        }

        vtable = FUNC1(&kext->vtables, i++);
        rval = FUNC9(vtable, vtable_sym, kext->kext, 
            defined_cxx_symbols);
        FUNC11(rval, finish);

        /* meta_vtable_sym will be null when we don't support strict
         * patching and can't find the metaclass vtable. If that's the
         * case, we just reduce the expect number of vtables by 1.
         */
        if (!FUNC5(kext->kext)) {
            if (meta_vtable_sym) {
                meta_vtable = FUNC1(&kext->vtables, i++);
                rval = FUNC9(meta_vtable, meta_vtable_sym, 
                    kext->kext, defined_cxx_symbols);
                FUNC11(rval, finish);
            } else {
                FUNC3(&kext->vtables, --nvtables);
                meta_vtable = NULL;
            }
        }
    }
    FUNC10(i == kext->vtables.nitems, finish, 
        rval=KERN_FAILURE);

    kext->vtables_created = TRUE;
    rval = KERN_SUCCESS;
finish:
    return rval;
}