
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DIR ;


 int SYS_rewinddir ;
 int errno ;
 int syscall1 (int ,int ) ;

void rewinddir( DIR* dirp ) {
    int error;

    error = syscall1( SYS_rewinddir, dirp->fd );

    if ( error < 0 ) {
        errno = -error;
    }
}
