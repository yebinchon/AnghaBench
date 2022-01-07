
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_6__ {int type; void* is_indirect; void* is_undefined; void* is_resolved; void* is_absolute; void* is_external; int sectnum; int link_addr; } ;
typedef TYPE_1__ KXLDSym ;


 void* FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int NO_SECT ;
 int N_ABS ;
 int N_EXT ;
 void* TRUE ;
 int check (TYPE_1__*) ;
 int finish ;
 scalar_t__ kxld_sym_is_indirect (TYPE_1__*) ;
 scalar_t__ kxld_sym_is_undefined (TYPE_1__*) ;
 int require_action (int,int ,int ) ;

kern_return_t
kxld_sym_resolve(KXLDSym *sym, kxld_addr_t addr)
{
    kern_return_t rval = KERN_FAILURE;

    check(sym);

    require_action(kxld_sym_is_undefined(sym) || kxld_sym_is_indirect(sym),
        finish, rval=KERN_FAILURE);



    sym->link_addr = addr;
    sym->type = N_ABS | N_EXT;
    sym->sectnum = NO_SECT;



    sym->is_external = TRUE;
    sym->is_absolute = TRUE;
    sym->is_resolved = TRUE;



    sym->is_undefined = FALSE;
    sym->is_indirect = FALSE;

    rval = KERN_SUCCESS;

finish:

    return rval;
}
