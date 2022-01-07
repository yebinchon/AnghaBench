
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* symtab; } ;
typedef int KXLDSymtab ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;

const KXLDSymtab *
kxld_object_get_symtab(const KXLDObject *object)
{
    check(object);

    return object->symtab;
}
