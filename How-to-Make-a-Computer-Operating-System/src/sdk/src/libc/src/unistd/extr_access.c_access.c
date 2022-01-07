
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_access ;
 int errno ;
 int syscall2 (int ,int,int) ;

int access( const char* pathname, int mode ) {
    int error;

    error = syscall2(
        SYS_access,
        ( int )pathname,
        mode
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
