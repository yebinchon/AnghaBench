
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;
struct _reent {int dummy; } ;
typedef int __errno_r ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int (*) (int),int const) ;
 int EBADF ;
 struct _reent* __getreent () ;
 int get_local_fd (int const*,int) ;
 int * get_vfs_for_fd (int) ;

int fsync(int fd)
{
    const vfs_entry_t* vfs = get_vfs_for_fd(fd);
    const int local_fd = get_local_fd(vfs, fd);
    struct _reent* r = __getreent();
    if (vfs == ((void*)0) || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    CHECK_AND_CALL(ret, r, vfs, fsync, local_fd);
    return ret;
}
