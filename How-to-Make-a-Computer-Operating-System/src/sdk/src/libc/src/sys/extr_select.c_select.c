
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 int SYS_select ;
 int errno ;
 int syscall5 (int ,int,int,int,int,int) ;

int select( int fds, fd_set* readfds, fd_set* writefds, fd_set* exceptfds, struct timeval* timeout ) {
    int error;

    error = syscall5(
        SYS_select,
        fds,
        ( int )readfds,
        ( int )writefds,
        ( int )exceptfds,
        ( int )timeout
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
