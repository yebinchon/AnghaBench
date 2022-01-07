
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ running; int * func; int * thd; int mutex; int cond; } ;


 int pthread_cond_destroy (int *) ;
 int pthread_join (int *,int *) ;
 int pthread_mutex_destroy (int *) ;
 TYPE_1__* thread_handle ;

void YabThreadWait(unsigned int id) {

    if(!thread_handle[id].running)
        return;


    pthread_join(thread_handle[id].thd, ((void*)0));


    pthread_cond_destroy(&thread_handle[id].cond);
    pthread_mutex_destroy(&thread_handle[id].mutex);
    thread_handle[id].thd = ((void*)0);
    thread_handle[id].func = ((void*)0);

    thread_handle[id].running = 0;
}
