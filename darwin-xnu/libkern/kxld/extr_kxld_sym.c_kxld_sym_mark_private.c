
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_external; int type; } ;
typedef TYPE_1__ KXLDSym ;


 int FALSE ;
 int N_PEXT ;
 int check (TYPE_1__*) ;

void
kxld_sym_mark_private(KXLDSym *sym)
{
    check(sym);

    sym->type |= N_PEXT;
    sym->is_external = FALSE;
}
