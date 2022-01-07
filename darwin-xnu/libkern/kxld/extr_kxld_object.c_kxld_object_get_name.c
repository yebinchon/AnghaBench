
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; } ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;

const char *
kxld_object_get_name(const KXLDObject *object)
{
    check(object);

    return object->name;
}
