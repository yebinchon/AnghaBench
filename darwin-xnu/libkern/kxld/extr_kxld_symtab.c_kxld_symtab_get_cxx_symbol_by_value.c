
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kxld_addr_t ;
struct TYPE_4__ {int cxx_index; } ;
typedef TYPE_1__ KXLDSymtab ;
typedef int KXLDSym ;


 int check (TYPE_1__ const*) ;
 int * kxld_dict_find (int *,int *) ;

KXLDSym *
kxld_symtab_get_cxx_symbol_by_value(const KXLDSymtab *symtab, kxld_addr_t value)
{
    check(symtab);

    return kxld_dict_find(&symtab->cxx_index, &value);
}
