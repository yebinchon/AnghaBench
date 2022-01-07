
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ collision_test_vfs_param_t ;


 int EBADF ;
 int errno ;

__attribute__((used)) static int collision_test_vfs_close(void* ctx, int fd)
{
    const collision_test_vfs_param_t *param = (collision_test_vfs_param_t *) ctx;
    if (fd == param->fd) {
        return 0;
    }
    errno = EBADF;
    return -1;
}
