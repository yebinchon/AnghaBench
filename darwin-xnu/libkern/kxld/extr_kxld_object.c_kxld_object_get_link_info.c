
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int splitKextLinkInfo ;
struct TYPE_4__ {int split_info; } ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__*) ;

splitKextLinkInfo *
kxld_object_get_link_info(KXLDObject *object)
{
    check(object);

    return &object->split_info;
}
