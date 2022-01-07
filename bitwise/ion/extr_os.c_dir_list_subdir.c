
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int base; int name; int is_dir; int valid; } ;
typedef TYPE_1__ DirListIter ;


 int dir_list (TYPE_1__*,int ) ;
 int dir_list_free (TYPE_1__*) ;
 int path_join (int ,int ) ;

bool dir_list_subdir(DirListIter *iter) {
    if (!iter->valid || !iter->is_dir) {
        return 0;
    }
    DirListIter subdir_iter;
    path_join(iter->base, iter->name);
    dir_list(&subdir_iter, iter->base);
    dir_list_free(iter);
    *iter = subdir_iter;
    return 1;
}
