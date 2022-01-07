
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxld_sym {int dummy; } ;
typedef int kern_return_t ;
typedef int KXLDSym ;
typedef int KXLDObject ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int * get_mutable_sym (int *,struct kxld_sym const*) ;
 int kxld_sym_patch (int *) ;
 int require_action (int *,int ,int ) ;

kern_return_t
kxld_object_patch_symbol(KXLDObject *object, const struct kxld_sym *sym)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *patched_sym = ((void*)0);

    patched_sym = get_mutable_sym(object, sym);
    require_action(patched_sym, finish, rval=KERN_FAILURE);

    (void) kxld_sym_patch(patched_sym);
    rval = KERN_SUCCESS;
finish:
    return rval;
}
