
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const relocator; } ;
typedef int KXLDRelocator ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;

const KXLDRelocator *
kxld_object_get_relocator(const KXLDObject * object)
{
    check(object);

    return &object->relocator;
}
