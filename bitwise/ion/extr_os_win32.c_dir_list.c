
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct _finddata_t {int dummy; } ;
struct TYPE_7__ {char* base; void* handle; } ;
typedef TYPE_1__ DirListIter ;


 int MAX_PATH ;
 intptr_t _findfirst (char*,struct _finddata_t*) ;
 int dir__update (TYPE_1__*,int,struct _finddata_t*) ;
 scalar_t__ dir_excluded (TYPE_1__*) ;
 int dir_list_next (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int path_copy (char*,char const*) ;
 int path_join (char*,char*) ;

void dir_list(DirListIter *iter, const char *path) {
    memset(iter, 0, sizeof(*iter));
    path_copy(iter->base, path);
    char filespec[MAX_PATH];
    path_copy(filespec, path);
    path_join(filespec, "*");
    struct _finddata_t fileinfo;
    intptr_t handle = _findfirst(filespec, &fileinfo);
    iter->handle = (void *)handle;
    dir__update(iter, handle == -1, &fileinfo);
    if (dir_excluded(iter)) {
        dir_list_next(iter);
    }
}
