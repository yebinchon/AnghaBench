
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_entry_t ;
struct TYPE_2__ {int local_fd; } ;


 scalar_t__ fd_valid (int) ;
 TYPE_1__* s_fd_table ;

__attribute__((used)) static inline int get_local_fd(const vfs_entry_t *vfs, int fd)
{
    int local_fd = -1;

    if (vfs && fd_valid(fd)) {
        local_fd = s_fd_table[fd].local_fd;
    }

    return local_fd;
}
