
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_isatty ;
 int errno ;
 int syscall1 (int ,int) ;

int isatty( int fd ) {
    int error;

    error = syscall1( SYS_isatty, fd );

    if ( error < 0 ) {
        errno = -error;
        return 0;
    }

    return error;
}
