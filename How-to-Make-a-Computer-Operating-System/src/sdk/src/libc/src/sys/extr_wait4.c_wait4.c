
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int pid_t ;


 int SYS_wait4 ;
 int errno ;
 int syscall4 (int ,int,int,int,int) ;

pid_t wait4( pid_t pid, int* status, int options, struct rusage* rusage ) {
    int error;

    error = syscall4(
        SYS_wait4,
        pid,
        ( int )status,
        options,
        ( int )rusage
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return error;
}
