
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_socket ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int socket( int domain, int type, int protocol ) {
    int error;

    error = syscall3( SYS_socket, domain, type, protocol );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
