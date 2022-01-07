
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int pthread_cond_timedwait (int *,int *,int *) ;

int pthread_cond_wait(pthread_cond_t *cv, pthread_mutex_t *mut)
{
    return pthread_cond_timedwait(cv, mut, ((void*)0));
}
