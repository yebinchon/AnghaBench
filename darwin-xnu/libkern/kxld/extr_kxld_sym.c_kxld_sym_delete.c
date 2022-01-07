
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_replaced; } ;
typedef TYPE_1__ KXLDSym ;


 int TRUE ;
 int bzero (TYPE_1__*,int) ;
 int check (TYPE_1__*) ;

void
kxld_sym_delete(KXLDSym *sym)
{
    check(sym);

    bzero(sym, sizeof(*sym));
    sym->is_replaced = TRUE;
}
