
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vfs_entry_t ;
struct dirent {int dummy; } ;
struct _reent {int dummy; } ;
struct TYPE_5__ {int dd_vfs_idx; } ;
typedef TYPE_1__ DIR ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int (*) (TYPE_1__*,struct dirent*,struct dirent**),TYPE_1__*,struct dirent*,struct dirent**) ;
 int EBADF ;
 struct _reent* __getreent () ;
 int errno ;
 int * get_vfs_for_index (int ) ;

int readdir_r(DIR* pdir, struct dirent* entry, struct dirent** out_dirent)
{
    const vfs_entry_t* vfs = get_vfs_for_index(pdir->dd_vfs_idx);
    struct _reent* r = __getreent();
    if (vfs == ((void*)0)) {
        errno = EBADF;
        return -1;
    }
    int ret;
    CHECK_AND_CALL(ret, r, vfs, readdir_r, pdir, entry, out_dirent);
    return ret;
}
