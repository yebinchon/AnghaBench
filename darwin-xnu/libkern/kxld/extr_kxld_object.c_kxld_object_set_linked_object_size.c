
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_long ;
struct TYPE_5__ {void* linkedKextSize; } ;
struct TYPE_6__ {TYPE_1__ split_info; void* output_buffer_size; } ;
typedef TYPE_2__ KXLDObject ;


 int check (TYPE_2__*) ;
 scalar_t__ isOldInterface ;

void
kxld_object_set_linked_object_size(KXLDObject *object, u_long vmsize)
{
    check(object);

    if (isOldInterface) {
        object->output_buffer_size = vmsize;
    }
    else {
        object->split_info.linkedKextSize = vmsize;
    }
    return;
}
