
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kxld_addr_t ;
typedef int kern_return_t ;
typedef int KXLDSym ;
typedef int KXLDObject ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int * get_mutable_sym (int *,int const*) ;
 int kxld_sym_resolve (int *,int ) ;
 int require_action (int *,int ,int ) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_object_resolve_symbol(KXLDObject *object,
    const KXLDSym *sym, kxld_addr_t addr)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *resolved_sym = ((void*)0);

    resolved_sym = get_mutable_sym(object, sym);
    require_action(resolved_sym, finish, rval=KERN_FAILURE);

    rval = kxld_sym_resolve(resolved_sym, addr);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
    return rval;
}
