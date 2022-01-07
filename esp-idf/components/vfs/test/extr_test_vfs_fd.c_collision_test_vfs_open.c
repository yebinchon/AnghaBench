
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int path; } ;
typedef TYPE_1__ collision_test_vfs_param_t ;


 int ENOENT ;
 int errno ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int collision_test_vfs_open(void* ctx, const char * path, int flags, int mode)
{
    const collision_test_vfs_param_t *param = (collision_test_vfs_param_t *) ctx;
    if (strcmp(param->path, path) == 0) {
        return param->fd;
    }
    errno = ENOENT;
    return -1;
}
