
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_dup2 ;
 int errno ;
 int syscall2 (int ,int,int) ;

int dup2( int old_fd, int new_fd ) {
    int error;

    error = syscall2( SYS_dup2, old_fd, new_fd );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
