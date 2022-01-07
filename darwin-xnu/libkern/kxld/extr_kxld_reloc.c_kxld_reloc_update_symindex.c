
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_3__ {scalar_t__ target_type; int target; } ;
typedef TYPE_1__ KXLDReloc ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ KXLD_TARGET_SYMBOLNUM ;
 int finish ;
 int require_action (int,int ,int ) ;

kern_return_t
kxld_reloc_update_symindex(KXLDReloc *reloc, u_int symindex)
{
    kern_return_t rval = KERN_FAILURE;

    require_action(reloc->target_type == KXLD_TARGET_SYMBOLNUM,
        finish, rval = KERN_FAILURE);

    reloc->target = symindex;

    rval = KERN_SUCCESS;

finish:
    return rval;
}
