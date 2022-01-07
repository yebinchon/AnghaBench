
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_replaced; } ;
typedef TYPE_1__ KXLDSym ;


 int TRUE ;
 int check (TYPE_1__*) ;

void
kxld_sym_patch(KXLDSym *sym)
{
    check(sym);

    sym->is_replaced = TRUE;
}
