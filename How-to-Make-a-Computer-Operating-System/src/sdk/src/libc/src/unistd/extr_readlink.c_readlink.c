
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int SYS_readlink ;
 int errno ;
 int syscall3 (int ,int,int,size_t) ;

ssize_t readlink( const char* path, char* buf, size_t bufsiz ) {
    int error;

    error = syscall3( SYS_readlink, ( int )path, ( int )buf, bufsiz );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
