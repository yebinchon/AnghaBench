
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;
struct _reent {int dummy; } ;
typedef int __errno_r ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int ,int const,int,int) ;
 int EBADF ;
 int fcntl ;
 int get_local_fd (int const*,int) ;
 int * get_vfs_for_fd (int) ;

int _fcntl_r(struct _reent *r, int fd, int cmd, int arg)
{
    const vfs_entry_t* vfs = get_vfs_for_fd(fd);
    const int local_fd = get_local_fd(vfs, fd);
    if (vfs == ((void*)0) || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    CHECK_AND_CALL(ret, r, vfs, fcntl, local_fd, cmd, arg);
    return ret;
}
