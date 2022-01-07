
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_entry_t ;
struct _reent {int dummy; } ;
typedef int ssize_t ;
typedef int off_t ;
typedef int __errno_r ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int ,int const,void*,size_t,int ) ;
 int EBADF ;
 struct _reent* __getreent () ;
 int get_local_fd (int const*,int) ;
 int * get_vfs_for_fd (int) ;
 int pread ;

ssize_t esp_vfs_pread(int fd, void *dst, size_t size, off_t offset)
{
    struct _reent *r = __getreent();
    const vfs_entry_t* vfs = get_vfs_for_fd(fd);
    const int local_fd = get_local_fd(vfs, fd);
    if (vfs == ((void*)0) || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    ssize_t ret;
    CHECK_AND_CALL(ret, r, vfs, pread, local_fd, dst, size, offset);
    return ret;
}
