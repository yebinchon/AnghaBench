
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_3__ {int symtab; } ;
typedef TYPE_1__ KXLDObject ;


 int kxld_symtab_index_symbols_by_name (int ) ;

kern_return_t
kxld_object_index_symbols_by_name(KXLDObject *object)
{
    return kxld_symtab_index_symbols_by_name(object->symtab);
}
