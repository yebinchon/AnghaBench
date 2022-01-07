
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_9__ {int name; } ;
struct TYPE_8__ {scalar_t__ name_index_initialized; int name_index; } ;
typedef int KXLDSymtabIterator ;
typedef TYPE_1__ KXLDSymtab ;
typedef TYPE_2__ KXLDSym ;


 int FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int check (TYPE_1__*) ;
 int finish ;
 int kxld_dict_init (int *,int ,int ,int ) ;
 int kxld_dict_insert (int *,int ,TYPE_2__*) ;
 int kxld_dict_string_cmp ;
 int kxld_dict_string_hash ;
 TYPE_2__* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_get_num_remaining (int *) ;
 int kxld_symtab_iterator_init (int *,TYPE_1__*,int ,int ) ;
 int require_noerr (int ,int ) ;
 int sym_is_name_indexed ;

kern_return_t
kxld_symtab_index_symbols_by_name(KXLDSymtab *symtab)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);
    u_int nsyms = 0;

    check(symtab);

    if (symtab->name_index_initialized) {
        rval = KERN_SUCCESS;
        goto finish;
    }


    kxld_symtab_iterator_init(&iter, symtab, sym_is_name_indexed, FALSE);
    nsyms = kxld_symtab_iterator_get_num_remaining(&iter);


    rval = kxld_dict_init(&symtab->name_index, kxld_dict_string_hash,
        kxld_dict_string_cmp, nsyms);
    require_noerr(rval, finish);


    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        rval = kxld_dict_insert(&symtab->name_index, sym->name, sym);
        require_noerr(rval, finish);
    }

    symtab->name_index_initialized = TRUE;
    rval = KERN_SUCCESS;
finish:

    return rval;
}
