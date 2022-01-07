
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ vtables_created; TYPE_2__ vtables; int kext; } ;
typedef int KXLDVTable ;
typedef int KXLDSymtabIterator ;
typedef int KXLDSymtab ;
typedef int KXLDSym ;
typedef TYPE_1__ KXLDKext ;
typedef int KXLDDict ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int finish ;
 int get_vtable_syms_from_smcp (TYPE_1__*,int const*,int *,int **,int **) ;
 int * kxld_array_get_item (TYPE_2__*,int ) ;
 int kxld_array_init (TYPE_2__*,int,scalar_t__) ;
 int kxld_array_resize (TYPE_2__*,scalar_t__) ;
 int * kxld_object_get_symtab (int ) ;
 scalar_t__ kxld_object_is_linked (int ) ;
 int kxld_sym_is_super_metaclass_pointer ;
 int kxld_sym_is_vtable ;
 int * kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_get_num_remaining (int *) ;
 int kxld_symtab_iterator_init (int *,int const*,int ,int ) ;
 int kxld_vtable_init (int *,int *,int ,int const*) ;
 int require_action (int,int ,int ) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
create_vtables(KXLDKext *kext, const KXLDDict *defined_cxx_symbols,
    const KXLDDict *defined_symbols)
{
    kern_return_t rval = KERN_FAILURE;
    const KXLDSymtab *symtab = ((void*)0);
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);
    KXLDSym *vtable_sym = ((void*)0);
    KXLDSym *meta_vtable_sym = ((void*)0);
    KXLDVTable *vtable = ((void*)0);
    KXLDVTable *meta_vtable = ((void*)0);
    u_int i = 0;
    u_int nvtables = 0;

    if (kext->vtables_created) {
        rval = KERN_SUCCESS;
        goto finish;
    }

    symtab = kxld_object_get_symtab(kext->kext);

    if (kxld_object_is_linked(kext->kext)) {

        kxld_symtab_iterator_init(&iter, symtab, kxld_sym_is_vtable, FALSE);
        nvtables = kxld_symtab_iterator_get_num_remaining(&iter);
    } else {





        kxld_symtab_iterator_init(&iter, symtab,
            kxld_sym_is_super_metaclass_pointer, FALSE);
        nvtables = kxld_symtab_iterator_get_num_remaining(&iter) * 2;
    }

    rval = kxld_array_init(&kext->vtables, sizeof(KXLDVTable), nvtables);
    require_noerr(rval, finish);

    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        if (kxld_object_is_linked(kext->kext)) {
            vtable_sym = sym;
            meta_vtable_sym = ((void*)0);
            meta_vtable = ((void*)0);
        } else {
            rval = get_vtable_syms_from_smcp(kext, defined_symbols, sym,
                &vtable_sym, &meta_vtable_sym);
            require_noerr(rval, finish);
        }

        vtable = kxld_array_get_item(&kext->vtables, i++);
        rval = kxld_vtable_init(vtable, vtable_sym, kext->kext,
            defined_cxx_symbols);
        require_noerr(rval, finish);





        if (!kxld_object_is_linked(kext->kext)) {
            if (meta_vtable_sym) {
                meta_vtable = kxld_array_get_item(&kext->vtables, i++);
                rval = kxld_vtable_init(meta_vtable, meta_vtable_sym,
                    kext->kext, defined_cxx_symbols);
                require_noerr(rval, finish);
            } else {
                kxld_array_resize(&kext->vtables, --nvtables);
                meta_vtable = ((void*)0);
            }
        }
    }
    require_action(i == kext->vtables.nitems, finish,
        rval=KERN_FAILURE);

    kext->vtables_created = TRUE;
    rval = KERN_SUCCESS;
finish:
    return rval;
}
