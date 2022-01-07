
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _finddata_t {int attrib; int name; int size; } ;
struct TYPE_3__ {int valid; int error; int is_dir; scalar_t__* name; int size; } ;
typedef TYPE_1__ DirListIter ;


 scalar_t__ ENOENT ;
 int MAX_PATH ;
 int _A_SUBDIR ;
 scalar_t__ errno ;
 int memcpy (scalar_t__*,int ,int) ;

void dir__update(DirListIter *iter, bool done, struct _finddata_t *fileinfo) {
    iter->valid = !done;
    iter->error = done && errno != ENOENT;
    if (!done) {
        iter->size = fileinfo->size;
        memcpy(iter->name, fileinfo->name, sizeof(iter->name) - 1);
        iter->name[MAX_PATH - 1] = 0;
        iter->is_dir = fileinfo->attrib & _A_SUBDIR;
    }
}
