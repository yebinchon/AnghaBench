
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; int sa_flags; int sa_mask; } ;
typedef scalar_t__ sighandler_t ;


 int EINVAL ;
 int SA_RESTART ;
 scalar_t__ SIG_ERR ;
 int _NSIG ;
 int errno ;
 scalar_t__ sigaction (int,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int) ;
 int sigemptyset (int *) ;

sighandler_t signal( int signum, sighandler_t handler ) {
    int error;
    struct sigaction act;
    struct sigaction oldact;

    if ( ( handler == SIG_ERR ) ||
         ( signum < 0 ) ||
         ( signum >= _NSIG ) ) {
        errno = -EINVAL;
        return SIG_ERR;
    }

    act.sa_handler = handler;

    error = sigemptyset( &act.sa_mask );

    if ( error < 0 ) {
        return SIG_ERR;
    }

    error = sigaddset( &act.sa_mask, signum );

    if ( error < 0 ) {
        return SIG_ERR;
    }

    act.sa_flags = SA_RESTART;

    if ( sigaction( signum, &act, &oldact ) < 0 ) {
        return SIG_ERR;
    }

    return oldact.sa_handler;
}
