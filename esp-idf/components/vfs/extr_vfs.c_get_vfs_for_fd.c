
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_entry_t ;
struct TYPE_2__ {int vfs_index; } ;


 scalar_t__ fd_valid (int) ;
 int * get_vfs_for_index (int const) ;
 TYPE_1__* s_fd_table ;

__attribute__((used)) static const vfs_entry_t *get_vfs_for_fd(int fd)
{
    const vfs_entry_t *vfs = ((void*)0);
    if (fd_valid(fd)) {
        const int index = s_fd_table[fd].vfs_index;
        vfs = get_vfs_for_index(index);
    }
    return vfs;
}
