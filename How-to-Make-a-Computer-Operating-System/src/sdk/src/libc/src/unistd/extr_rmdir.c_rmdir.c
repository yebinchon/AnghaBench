
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_rmdir ;
 int errno ;
 int syscall1 (int ,int) ;

int rmdir( const char* pathname ) {
    int error;

    error = syscall1( SYS_rmdir, ( int )pathname );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
