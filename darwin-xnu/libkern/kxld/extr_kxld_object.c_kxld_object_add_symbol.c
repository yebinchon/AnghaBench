
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int symtab; } ;
typedef int KXLDSym ;
typedef TYPE_1__ KXLDObject ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int kxld_symtab_add_symbol (int ,char*,int ,int **) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_object_add_symbol(KXLDObject *object, char *name, kxld_addr_t link_addr,
    const KXLDSym **sym_out)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSym *sym = ((void*)0);

    rval = kxld_symtab_add_symbol(object->symtab, name, link_addr, &sym);
    require_noerr(rval, finish);

    *sym_out = sym;
    rval = KERN_SUCCESS;
finish:
    return rval;
}
