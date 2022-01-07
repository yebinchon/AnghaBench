
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; int error; int handle; } ;
typedef TYPE_1__ DirListIter ;


 int closedir (int ) ;

void dir_list_free(DirListIter *iter) {
    if (iter->valid) {
        iter->valid = 0;
        iter->error = 0;
        closedir(iter->handle);
    }
}
