
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_entry_t ;
struct _reent {int dummy; } ;
typedef int __errno_r ;
struct TYPE_3__ {int permanent; } ;


 int CHECK_AND_CALL (int,struct _reent*,int const*,int ,int const) ;
 int EBADF ;
 TYPE_1__ FD_TABLE_ENTRY_UNUSED ;
 int _lock_acquire (int *) ;
 int _lock_release (int *) ;
 int close ;
 int get_local_fd (int const*,int) ;
 int * get_vfs_for_fd (int) ;
 TYPE_1__* s_fd_table ;
 int s_fd_table_lock ;

int esp_vfs_close(struct _reent *r, int fd)
{
    const vfs_entry_t* vfs = get_vfs_for_fd(fd);
    const int local_fd = get_local_fd(vfs, fd);
    if (vfs == ((void*)0) || local_fd < 0) {
        __errno_r(r) = EBADF;
        return -1;
    }
    int ret;
    CHECK_AND_CALL(ret, r, vfs, close, local_fd);

    _lock_acquire(&s_fd_table_lock);
    if (!s_fd_table[fd].permanent) {
        s_fd_table[fd] = FD_TABLE_ENTRY_UNUSED;
    }
    _lock_release(&s_fd_table_lock);
    return ret;
}
