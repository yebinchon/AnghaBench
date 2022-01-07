
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int __SIGSUSPEND (int ) ;
 int sigemptyset (int *) ;

int
sigsuspend (const sigset_t *sigmask_p)
{
    sigset_t mask;

    if (sigmask_p)
        mask = *sigmask_p;
    else
        sigemptyset(&mask);
    return __SIGSUSPEND(mask);
}
