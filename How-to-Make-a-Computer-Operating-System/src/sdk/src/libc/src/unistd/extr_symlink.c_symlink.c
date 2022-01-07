
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_symlink ;
 int errno ;
 int syscall2 (int ,int,int) ;

int symlink( const char* oldpath, const char* newpath ) {
    int error;

    error = syscall2( SYS_symlink, ( int )oldpath, ( int )newpath );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
