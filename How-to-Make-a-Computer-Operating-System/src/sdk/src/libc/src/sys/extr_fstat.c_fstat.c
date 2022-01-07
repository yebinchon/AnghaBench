
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int SYS_fstat ;
 int errno ;
 int syscall2 (int ,int,int) ;

int fstat( int fd, struct stat* stat ) {
    int error;

    error = syscall2( SYS_fstat, fd, ( int )stat );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
