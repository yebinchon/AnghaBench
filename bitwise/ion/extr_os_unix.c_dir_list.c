
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int valid; int error; int base; int * handle; } ;
typedef TYPE_1__ DirListIter ;
typedef int DIR ;


 int dir_list_next (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * opendir (char const*) ;
 int path_copy (int ,char const*) ;

void dir_list(DirListIter *iter, const char *path) {
    memset(iter, 0, sizeof(*iter));
    DIR *dir = opendir(path);
    if (!dir) {
        iter->valid = 0;
        iter->error = 1;
        return;
    }
    iter->handle = dir;
    path_copy(iter->base, path);
    iter->valid = 1;
    dir_list_next(iter);
}
