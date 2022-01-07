
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_3__ {int symtab; } ;
typedef int const KXLDSym ;
typedef TYPE_1__ KXLDObject ;


 int KERN_FAILURE ;
 int finish ;
 int kxld_symtab_get_sym_index (int ,int const*,int *) ;
 int const* kxld_symtab_get_symbol_by_index (int ,int ) ;
 int require_action (int,int ,int ) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static KXLDSym *
get_mutable_sym(const KXLDObject *object, const KXLDSym *sym)
{
    KXLDSym *rval = ((void*)0);
    kern_return_t result = KERN_FAILURE;
    u_int i = 0;

    result = kxld_symtab_get_sym_index(object->symtab, sym, &i);
    require_noerr(result, finish);

    rval = kxld_symtab_get_symbol_by_index(object->symtab, i);
    require_action(rval == sym, finish, rval=((void*)0));

finish:
    return rval;
}
