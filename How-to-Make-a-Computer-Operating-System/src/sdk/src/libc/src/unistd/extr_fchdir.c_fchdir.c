
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_fchdir ;
 int errno ;
 int syscall1 (int ,int) ;

int fchdir( int fd ) {
    int error;

    error = syscall1( SYS_fchdir, fd );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
