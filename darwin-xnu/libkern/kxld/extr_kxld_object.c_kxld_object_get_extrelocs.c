
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int extrelocs; } ;
typedef TYPE_1__ KXLDObject ;
typedef int KXLDArray ;


 int check (TYPE_1__ const*) ;
 scalar_t__ kxld_object_is_final_image (TYPE_1__ const*) ;

const KXLDArray *
kxld_object_get_extrelocs(const KXLDObject *object)
{
    const KXLDArray *rval = ((void*)0);

    check(object);

    if (kxld_object_is_final_image(object)) {
        rval = &object->extrelocs;
    }

    return rval;
}
