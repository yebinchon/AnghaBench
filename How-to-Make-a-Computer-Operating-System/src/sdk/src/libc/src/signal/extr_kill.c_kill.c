
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_kill ;
 int errno ;
 int syscall2 (int ,int ,int) ;

int kill( pid_t pid, int signal ) {
    int error;

    error = syscall2(
        SYS_kill,
        pid,
        signal
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
