
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;
struct utimbuf {int dummy; } ;
struct _reent {int dummy; } ;
typedef int __errno_r ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int ,char const*,struct utimbuf const*) ;
 int ENOENT ;
 struct _reent* __getreent () ;
 int * get_vfs_for_path (char const*) ;
 char* translate_path (int const*,char const*) ;
 int utime ;

int esp_vfs_utime(const char *path, const struct utimbuf *times)
{
    int ret;
    const vfs_entry_t* vfs = get_vfs_for_path(path);
    struct _reent* r = __getreent();
    if (vfs == ((void*)0)) {
        __errno_r(r) = ENOENT;
        return -1;
    }
    const char* path_within_vfs = translate_path(vfs, path);
    CHECK_AND_CALL(ret, r, vfs, utime, path_within_vfs, times);
    return ret;
}
