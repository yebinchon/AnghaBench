
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_12__ {scalar_t__ nitems; } ;
struct TYPE_11__ {int name; } ;
struct TYPE_10__ {int name_index; TYPE_7__ syms; } ;
typedef TYPE_1__ KXLDSymtab ;
typedef TYPE_2__ KXLDSym ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 TYPE_2__* kxld_array_get_item (TYPE_7__*,scalar_t__) ;
 int kxld_array_resize (TYPE_7__*,scalar_t__) ;
 int kxld_dict_insert (int *,int ,TYPE_2__*) ;
 int kxld_sym_init_absolute (TYPE_2__*,char*,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_symtab_add_symbol(KXLDSymtab *symtab, char *name, kxld_addr_t link_addr,
    KXLDSym **symout)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *sym = ((void*)0);
    u_int symindex = symtab->syms.nitems;

    rval = kxld_array_resize(&symtab->syms, symindex + 1);
    require_noerr(rval, finish);

    sym = kxld_array_get_item(&symtab->syms, symindex);
    kxld_sym_init_absolute(sym, name, link_addr);

    rval = kxld_dict_insert(&symtab->name_index, sym->name, sym);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
    *symout = sym;

finish:
    return rval;
}
