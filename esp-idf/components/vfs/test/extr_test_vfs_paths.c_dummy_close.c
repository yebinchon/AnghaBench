
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int called; } ;
typedef TYPE_1__ dummy_vfs_t ;


 int EBADF ;
 int errno ;

__attribute__((used)) static int dummy_close(void* ctx, int fd)
{
    dummy_vfs_t* dummy = (dummy_vfs_t*) ctx;
    dummy->called = 1;
    if (fd == 1) {
        return 0;
    }
    errno = EBADF;
    return -1;
}
