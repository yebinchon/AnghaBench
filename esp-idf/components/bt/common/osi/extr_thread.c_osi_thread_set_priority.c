
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_handle; } ;
typedef TYPE_1__ osi_thread_t ;


 int assert (int ) ;
 int vTaskPrioritySet (int ,int) ;

bool osi_thread_set_priority(osi_thread_t *thread, int priority)
{
    assert(thread != ((void*)0));

    vTaskPrioritySet(thread->thread_handle, priority);
    return 1;
}
