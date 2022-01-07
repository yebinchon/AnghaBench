
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_open ;
 int errno ;
 int syscall2 (int ,int,int) ;

int open( const char* filename, int flags, ... ) {
    int error;

    error = syscall2( SYS_open, ( int )filename, flags );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
