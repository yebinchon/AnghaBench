
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_chdir ;
 int errno ;
 int syscall1 (int ,int) ;

int chdir( const char* path ) {
    int error;

    error = syscall1( SYS_chdir, ( int )path );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
