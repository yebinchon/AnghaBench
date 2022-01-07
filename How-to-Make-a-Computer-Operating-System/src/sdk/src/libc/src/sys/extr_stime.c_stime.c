
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int SYS_stime ;
 int errno ;
 int syscall1 (int ,int) ;

int stime( time_t *t ) {
    int error;

    error = syscall1( SYS_stime, ( int )t );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
