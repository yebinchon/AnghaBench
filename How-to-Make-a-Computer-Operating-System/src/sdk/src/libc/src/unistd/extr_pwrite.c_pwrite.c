
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int SYS_pwrite ;
 int errno ;
 int syscall4 (int ,int,int,size_t,int) ;

ssize_t pwrite( int fd, const void* buf, size_t count, off_t offset ) {
    int error;

    error = syscall4( SYS_pwrite, fd, ( int )buf, count, ( int )&offset );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
