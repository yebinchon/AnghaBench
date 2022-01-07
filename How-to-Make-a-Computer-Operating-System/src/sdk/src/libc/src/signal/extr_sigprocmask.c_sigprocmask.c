
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SYS_sigprocmask ;
 int errno ;
 int syscall3 (int ,int,int,int) ;

int sigprocmask( int how, const sigset_t* set, sigset_t* oldset ) {
    int error;

    error = syscall3(
        SYS_sigprocmask,
        how,
        ( int )set,
        ( int )oldset
    );

    if ( error < 0 ) {
        errno = -error;
        return -1;
    }

    return 0;
}
