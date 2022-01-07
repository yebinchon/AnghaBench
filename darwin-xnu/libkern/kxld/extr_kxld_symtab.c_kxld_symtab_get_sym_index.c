
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_3__ {int syms; } ;
typedef TYPE_1__ KXLDSymtab ;
typedef int KXLDSym ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int kxld_array_get_index (int *,int const*,int *) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_symtab_get_sym_index(const KXLDSymtab *symtab, const KXLDSym *sym,
    u_int *symindex)
{
    kern_return_t rval = KERN_FAILURE;

    rval = kxld_array_get_index(&symtab->syms, sym, symindex);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;

finish:
    return rval;
}
