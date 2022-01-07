
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_5__ {int link_addr; int * name; } ;
typedef int KXLDSymtabIterator ;
typedef TYPE_1__ KXLDSym ;
typedef int KXLDObject ;
typedef int KXLDDict ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int kxld_dict_insert (int *,int *,TYPE_1__*) ;
 int kxld_object_get_symtab (int const*) ;
 scalar_t__ kxld_sym_is_cxx (TYPE_1__*) ;
 int kxld_sym_is_exported ;
 TYPE_1__* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_init (int *,int ,int ,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
export_symbols(const KXLDObject *kext, KXLDDict *defined_symbols_by_name,
    KXLDDict *defined_cxx_symbols_by_value)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);

    (void) kxld_symtab_iterator_init(&iter, kxld_object_get_symtab(kext),
        kxld_sym_is_exported, FALSE);
    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        if (defined_symbols_by_name) {
            rval = kxld_dict_insert(defined_symbols_by_name, sym->name, sym);
            require_noerr(rval, finish);
        }

        if (kxld_sym_is_cxx(sym) && defined_cxx_symbols_by_value) {
            rval = kxld_dict_insert(defined_cxx_symbols_by_value,
                &sym->link_addr, sym);
            require_noerr(rval, finish);
        }
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
