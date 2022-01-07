
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int dummy; } ;


 int SYS_sigaction ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int sigaction( int signum, const struct sigaction* act, struct sigaction* oldact ) {
    int error;

    error = syscall3(
        SYS_sigaction,
        signum,
        ( int )act,
        ( int )oldact
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
