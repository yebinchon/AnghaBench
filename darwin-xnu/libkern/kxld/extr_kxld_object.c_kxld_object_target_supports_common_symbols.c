
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ cputype; } ;
typedef TYPE_1__ KXLDObject ;


 scalar_t__ CPU_TYPE_I386 ;
 int check (TYPE_1__ const*) ;

boolean_t
kxld_object_target_supports_common_symbols(const KXLDObject *object)
{
    check(object);

    return (object->cputype == CPU_TYPE_I386);
}
