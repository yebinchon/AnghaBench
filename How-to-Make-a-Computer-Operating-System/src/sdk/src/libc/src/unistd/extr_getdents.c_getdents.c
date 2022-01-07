
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int dummy; } ;


 int SYS_getdents ;
 int errno ;
 int syscall3 (int ,int,int,unsigned int) ;

int getdents( int fd, struct dirent* entry, unsigned int count ) {
    int error;

    error = syscall3( SYS_getdents, fd, ( int )entry, count );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
