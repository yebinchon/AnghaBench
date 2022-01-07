
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vfs_entry_t ;
struct dirent {int dummy; } ;
struct _reent {int dummy; } ;
typedef int __errno_r ;
struct TYPE_5__ {int dd_vfs_idx; } ;
typedef TYPE_1__ DIR ;


 int CHECK_AND_CALLP (struct dirent*,struct _reent*,int const*,struct dirent* (*) (TYPE_1__*),TYPE_1__*) ;
 int EBADF ;
 struct _reent* __getreent () ;
 int * get_vfs_for_index (int ) ;

struct dirent* readdir(DIR* pdir)
{
    const vfs_entry_t* vfs = get_vfs_for_index(pdir->dd_vfs_idx);
    struct _reent* r = __getreent();
    if (vfs == ((void*)0)) {
       __errno_r(r) = EBADF;
        return ((void*)0);
    }
    struct dirent* ret;
    CHECK_AND_CALLP(ret, r, vfs, readdir, pdir);
    return ret;
}
