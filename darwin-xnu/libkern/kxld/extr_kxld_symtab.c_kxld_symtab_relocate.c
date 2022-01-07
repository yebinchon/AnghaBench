
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_4__ {int sectnum; } ;
typedef int KXLDSymtabIterator ;
typedef int const KXLDSymtab ;
typedef TYPE_1__ KXLDSym ;
typedef int KXLDSect ;
typedef int KXLDArray ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (int const*) ;
 int finish ;
 int * kxld_array_get_item (int const*,int ) ;
 int kxld_sym_is_section ;
 int kxld_sym_relocate (TYPE_1__*,int const*) ;
 TYPE_1__* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_init (int *,int const*,int ,int ) ;
 int require_action (int const*,int ,int ) ;

kern_return_t
kxld_symtab_relocate(KXLDSymtab *symtab, const KXLDArray *sectarray)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);
    const KXLDSect *sect = ((void*)0);

    check(symtab);
    check(sectarray);

    kxld_symtab_iterator_init(&iter, symtab, kxld_sym_is_section, FALSE);

    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        sect = kxld_array_get_item(sectarray, sym->sectnum);
        require_action(sect, finish, rval=KERN_FAILURE);
        kxld_sym_relocate(sym, sect);
    }

    rval = KERN_SUCCESS;

finish:

    return rval;
}
