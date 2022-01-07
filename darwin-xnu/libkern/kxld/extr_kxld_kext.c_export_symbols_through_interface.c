
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_4__ {int link_addr; int * name; int * alias; } ;
typedef int KXLDSymtabIterator ;
typedef int KXLDSymtab ;
typedef TYPE_1__ KXLDSym ;
typedef int KXLDObject ;
typedef int KXLDDict ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (int const*) ;
 int finish ;
 int kKxldLogLinking ;
 int kKxldLogWarn ;
 int kxld_dict_insert (int *,int *,TYPE_1__*) ;
 int kxld_log (int ,int ,char*,int ,int ,int *,...) ;
 int kxld_object_get_name (int const*) ;
 int * kxld_object_get_symtab (int const*) ;
 int kxld_sym_is_cxx ;
 int kxld_sym_is_indirect ;
 int kxld_sym_is_obsolete ;
 int kxld_sym_is_undefined ;
 TYPE_1__* kxld_symtab_get_locally_defined_symbol_by_name (int const*,int *) ;
 void* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_init (int *,int const*,int ,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
export_symbols_through_interface(const KXLDObject *kext,
    const KXLDObject *interface, KXLDDict *defined_symbols_by_name,
    KXLDDict *obsolete_symbols_by_name, KXLDDict *defined_cxx_symbols_by_value)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    const KXLDSymtab *kext_symtab = ((void*)0);
    const KXLDSymtab *interface_symtab = ((void*)0);
    KXLDSym *kext_sym = ((void*)0);
    const KXLDSym *interface_sym = ((void*)0);

    check(kext);
    check(interface);

    kext_symtab = kxld_object_get_symtab(kext);
    interface_symtab = kxld_object_get_symtab(interface);

    if (defined_symbols_by_name) {

        (void) kxld_symtab_iterator_init(&iter, interface_symtab,
            kxld_sym_is_undefined, FALSE);
        while ((interface_sym = kxld_symtab_iterator_get_next(&iter))) {
            kext_sym = kxld_symtab_get_locally_defined_symbol_by_name(kext_symtab,
                interface_sym->name);
            if (!kext_sym) {
                kxld_log(kKxldLogLinking, kKxldLogWarn,
                    "In interface %s of %s, couldn't find symbol %s\n",
                    kxld_object_get_name(interface), kxld_object_get_name(kext),
                    interface_sym->name);
                continue;
            }

            rval = kxld_dict_insert(defined_symbols_by_name,
                kext_sym->name, kext_sym);
            require_noerr(rval, finish);
        }


        (void) kxld_symtab_iterator_init(&iter, interface_symtab,
            kxld_sym_is_indirect, FALSE);
        while ((interface_sym = kxld_symtab_iterator_get_next(&iter))) {
            kext_sym = kxld_symtab_get_locally_defined_symbol_by_name(kext_symtab,
                interface_sym->alias);
            if (!kext_sym) {
                kxld_log(kKxldLogLinking, kKxldLogWarn,
                    "In interface %s of %s, couldn't find indirect symbol %s (%s)\n",
                    kxld_object_get_name(interface), kxld_object_get_name(kext),
                    interface_sym->alias, interface_sym->name);
                continue;
            }

            rval = kxld_dict_insert(defined_symbols_by_name,
                interface_sym->name, kext_sym);
            require_noerr(rval, finish);
        }
    }


    if (obsolete_symbols_by_name) {
        (void) kxld_symtab_iterator_init(&iter, interface_symtab,
            kxld_sym_is_obsolete, FALSE);
        while ((kext_sym = kxld_symtab_iterator_get_next(&iter))) {
            rval = kxld_dict_insert(obsolete_symbols_by_name,
                kext_sym->name, kext_sym);
            require_noerr(rval, finish);
        }
    }


    if (defined_cxx_symbols_by_value) {
        (void) kxld_symtab_iterator_init(&iter, kext_symtab,
            kxld_sym_is_cxx, FALSE);
        while ((kext_sym = kxld_symtab_iterator_get_next(&iter))) {
            rval = kxld_dict_insert(defined_cxx_symbols_by_value,
                &kext_sym->link_addr, kext_sym);
            require_noerr(rval, finish);
        }
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
