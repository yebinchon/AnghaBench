
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int SYS_connect ;
 int errno ;
 int syscall3 (int ,int,int,int ) ;

int connect( int fd, const struct sockaddr* address, socklen_t addrlen ) {
    int error;

    error = syscall3( SYS_connect, fd, ( int )address, addrlen );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
