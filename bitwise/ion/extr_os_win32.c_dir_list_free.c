
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valid; int error; scalar_t__ handle; } ;
typedef TYPE_1__ DirListIter ;


 int _findclose (intptr_t) ;

void dir_list_free(DirListIter *iter) {
    if (iter->valid) {
        _findclose((intptr_t)iter->handle);
        iter->valid = 0;
        iter->error = 0;
    }
}
