
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* name; scalar_t__ valid; } ;
typedef TYPE_1__ DirListIter ;


 int MAX_PATH ;
 int dir_list (TYPE_1__*,char*) ;
 int dir_list_free (TYPE_1__*) ;
 int dir_list_next (TYPE_1__*) ;
 int path_copy (char*,char const*) ;
 char* path_ext (char const*) ;
 int path_join (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

bool is_package_dir(const char *search_path, const char *package_path) {
    char path[MAX_PATH];
    path_copy(path, search_path);
    path_join(path, package_path);
    DirListIter iter;
    for (dir_list(&iter, path); iter.valid; dir_list_next(&iter)) {
        const char *ext = path_ext(iter.name);
        if (ext != iter.name && strcmp(ext, "ion") == 0) {
            dir_list_free(&iter);
            return 1;
        }
    }
    return 0;
}
