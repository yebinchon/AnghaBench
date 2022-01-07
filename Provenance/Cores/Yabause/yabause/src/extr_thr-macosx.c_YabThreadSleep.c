
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int cond; } ;


 int pthread_cond_wait (int *,int *) ;
 TYPE_1__* thread_handle ;

void YabThreadSleep(unsigned int id) {

   pthread_cond_wait(&thread_handle[id].cond, &thread_handle[id].mutex);
}
