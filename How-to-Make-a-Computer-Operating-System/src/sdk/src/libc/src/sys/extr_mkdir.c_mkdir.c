
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mode_t ;


 int SYS_mkdir ;
 int errno ;
 int syscall2 (int ,int,int) ;

int mkdir( const char* pathname, mode_t mode ) {
    int error;

    error = syscall2( SYS_mkdir, ( int )pathname, ( int )mode );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
