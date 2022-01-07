
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dirent {int d_type; int d_name; } ;
struct TYPE_5__ {int is_dir; int name; int handle; int valid; } ;
typedef TYPE_1__ DirListIter ;


 int DT_DIR ;
 scalar_t__ dir_excluded (TYPE_1__*) ;
 int dir_list_free (TYPE_1__*) ;
 int path_copy (int ,int ) ;
 struct dirent* readdir (int ) ;

void dir_list_next(DirListIter *iter) {
    if (!iter->valid) {
        return;
    }
    do {
        struct dirent *entry = readdir(iter->handle);
        if (!entry) {
            dir_list_free(iter);
            return;
        }
        path_copy(iter->name, entry->d_name);
        iter->is_dir = entry->d_type & DT_DIR;
    } while (dir_excluded(iter));
}
