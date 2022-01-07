
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_6__ {scalar_t__ nitems; } ;
struct TYPE_5__ {TYPE_3__ sects; } ;
typedef int const KXLDSect ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;
 int const* kxld_array_get_item (TYPE_3__*,scalar_t__) ;

const KXLDSect *
kxld_object_get_section_by_index(const KXLDObject *object, u_int sectnum)
{
    KXLDSect *sect = ((void*)0);

    check(object);

    if (sectnum < object->sects.nitems) {
        sect = kxld_array_get_item(&object->sects, sectnum);
    }

    return sect;
}
