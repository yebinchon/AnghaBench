
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_fcntl ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int fcntl( int fd, int cmd, ... ) {
    int error;

    error = syscall3( SYS_fcntl, fd, cmd, *( ( ( int* )&cmd ) + 1 ) );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
