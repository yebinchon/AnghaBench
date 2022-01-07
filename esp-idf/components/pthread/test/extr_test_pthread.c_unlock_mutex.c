
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int pthread_exit (void*) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void *unlock_mutex(void *arg)
{
    pthread_mutex_t *mutex = (pthread_mutex_t *) arg;
    intptr_t res = (intptr_t) pthread_mutex_unlock(mutex);
    pthread_exit((void *) res);
    return ((void*)0);
}
