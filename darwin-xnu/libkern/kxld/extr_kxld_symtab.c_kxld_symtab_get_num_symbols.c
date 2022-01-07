
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int nitems; } ;
struct TYPE_6__ {TYPE_1__ syms; } ;
typedef TYPE_2__ KXLDSymtab ;


 int check (TYPE_2__ const*) ;

u_int
kxld_symtab_get_num_symbols(const KXLDSymtab *symtab)
{
    check(symtab);

    return symtab->syms.nitems;
}
