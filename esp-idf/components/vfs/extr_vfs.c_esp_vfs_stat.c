
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;
struct stat {int dummy; } ;
struct _reent {int dummy; } ;
typedef int __errno_r ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int ,char const*,struct stat*) ;
 int ENOENT ;
 int * get_vfs_for_path (char const*) ;
 int stat ;
 char* translate_path (int const*,char const*) ;

int esp_vfs_stat(struct _reent *r, const char * path, struct stat * st)
{
    const vfs_entry_t* vfs = get_vfs_for_path(path);
    if (vfs == ((void*)0)) {
        __errno_r(r) = ENOENT;
        return -1;
    }
    const char* path_within_vfs = translate_path(vfs, path);
    int ret;
    CHECK_AND_CALL(ret, r, vfs, stat, path_within_vfs, st);
    return ret;
}
