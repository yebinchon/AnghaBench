
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cond; int running; } ;


 int pthread_cond_signal (int *) ;
 TYPE_1__* thread_handle ;

void YabThreadWake(unsigned int id) {
    if(!thread_handle[id].running)
        return;

    pthread_cond_signal(&thread_handle[id].cond);
}
