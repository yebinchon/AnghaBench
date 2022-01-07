
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_exit (void*) ;

__attribute__((used)) static void *compute_square(void *arg)
{
    int *num = (int *) arg;
    *num = (*num) * (*num);
    pthread_exit((void *) num);
    return ((void*)0);
}
