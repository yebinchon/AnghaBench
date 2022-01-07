
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct _finddata_t {int dummy; } ;
struct TYPE_6__ {scalar_t__ handle; int valid; } ;
typedef TYPE_1__ DirListIter ;


 int _findnext (intptr_t,struct _finddata_t*) ;
 int dir__update (TYPE_1__*,int,struct _finddata_t*) ;
 scalar_t__ dir_excluded (TYPE_1__*) ;
 int dir_list_free (TYPE_1__*) ;

void dir_list_next(DirListIter *iter) {
    if (!iter->valid) {
        return;
    }
    do {
        struct _finddata_t fileinfo;
        int result = _findnext((intptr_t)iter->handle, &fileinfo);
        dir__update(iter, result != 0, &fileinfo);
        if (result != 0) {
            dir_list_free(iter);
            return;
        }
    } while (dir_excluded(iter));
}
