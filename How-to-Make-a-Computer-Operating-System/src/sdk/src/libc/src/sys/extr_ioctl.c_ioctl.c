
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_ioctl ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int ioctl( int fd, int request, ... ) {
    int error;

    error = syscall3( SYS_ioctl, fd, request, *( ( ( ( int* )&request ) ) + 1 ) );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
