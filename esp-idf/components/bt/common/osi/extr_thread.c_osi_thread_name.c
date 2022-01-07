
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread_handle; } ;
typedef TYPE_1__ osi_thread_t ;


 int assert (int ) ;
 char const* pcTaskGetTaskName (int ) ;

const char *osi_thread_name(osi_thread_t *thread)
{
    assert(thread != ((void*)0));

    return pcTaskGetTaskName(thread->thread_handle);
}
