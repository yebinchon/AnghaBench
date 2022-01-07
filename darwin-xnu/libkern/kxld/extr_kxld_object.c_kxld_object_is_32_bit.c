
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {int cputype; } ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;
 int kxld_is_32_bit (int ) ;

boolean_t
kxld_object_is_32_bit(const KXLDObject *object)
{
    check(object);

    return kxld_is_32_bit(object->cputype);
}
