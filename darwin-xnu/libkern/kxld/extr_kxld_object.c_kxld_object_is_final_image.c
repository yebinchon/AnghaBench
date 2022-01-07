
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {int is_final_image; } ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;

boolean_t
kxld_object_is_final_image(const KXLDObject *object)
{
    check(object);

    return object->is_final_image;
}
