
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int syms; } ;
typedef TYPE_1__ KXLDSymtab ;
typedef int KXLDSym ;


 int check (TYPE_1__ const*) ;
 int * kxld_array_get_item (int *,int ) ;

KXLDSym *
kxld_symtab_get_symbol_by_index(const KXLDSymtab *symtab, u_int idx)
{
    check(symtab);

    return kxld_array_get_item(&symtab->syms, idx);
}
