
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int * kextExecutable; } ;
struct TYPE_6__ {TYPE_1__ split_info; int * file; } ;
typedef TYPE_2__ KXLDObject ;


 int check (TYPE_2__ const*) ;
 scalar_t__ isOldInterface ;

const u_char *
kxld_object_get_file(const KXLDObject *object)
{
    const u_char *my_file;

    check(object);

    if (isOldInterface) {
        my_file = object->file;
    }
    else {
        my_file = object->split_info.kextExecutable;
    }

    return my_file;
}
