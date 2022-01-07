
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int SYS_stat ;
 int errno ;
 int syscall2 (int ,int,int) ;

int stat( const char* path, struct stat* stat ) {
    int error;

    error = syscall2( SYS_stat, ( int )path, ( int )stat );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
