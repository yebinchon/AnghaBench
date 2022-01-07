
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; } ;
typedef TYPE_1__ VCOS_THREAD_T ;


 int pthread_join (int ,void**) ;
 int vcos_thread_cleanup (TYPE_1__*) ;

void vcos_thread_join(VCOS_THREAD_T *thread,
                             void **pData)
{
   pthread_join(thread->thread, pData);
   vcos_thread_cleanup(thread);
}
