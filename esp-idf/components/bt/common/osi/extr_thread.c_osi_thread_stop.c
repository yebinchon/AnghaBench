
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stop; scalar_t__ thread_handle; int work_sem; } ;
typedef TYPE_1__ osi_thread_t ;


 int assert (int ) ;
 int osi_sem_give (int *) ;
 int osi_thread_join (TYPE_1__*,int) ;
 int vTaskDelete (scalar_t__) ;

__attribute__((used)) static void osi_thread_stop(osi_thread_t *thread)
{
    int ret;

    assert(thread != ((void*)0));


    thread->stop = 1;
    osi_sem_give(&thread->work_sem);


    ret = osi_thread_join(thread, 1000);


    if (ret != 0 && thread->thread_handle) {
        vTaskDelete(thread->thread_handle);
    }
}
