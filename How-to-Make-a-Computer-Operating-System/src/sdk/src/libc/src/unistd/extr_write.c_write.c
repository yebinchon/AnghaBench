
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int SYS_write ;
 int errno ;
 int syscall3 (int ,int,int,size_t) ;

ssize_t write( int fd, const void* buf, size_t count ) {
    int error;

    error = syscall3( SYS_write, fd, ( int )buf, count );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
