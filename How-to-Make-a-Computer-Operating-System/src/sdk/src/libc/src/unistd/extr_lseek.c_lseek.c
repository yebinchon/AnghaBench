
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int SYS_lseek ;
 int errno ;
 int syscall4 (int ,int,int,int,int) ;

off_t lseek( int fd, off_t offset, int whence ) {
    int error;
    off_t result;

    error = syscall4( SYS_lseek, fd, ( int )&offset, whence, ( int )&result );

    if ( error < 0 ) {
        errno = -error;
        return ( off_t )-1;
    }

    return result;
}
