
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int stop_sem; } ;
typedef TYPE_1__ osi_thread_t ;


 int assert (int ) ;
 int osi_sem_take (int *,int ) ;

__attribute__((used)) static int osi_thread_join(osi_thread_t *thread, uint32_t wait_ms)
{
    assert(thread != ((void*)0));
    return osi_sem_take(&thread->stop_sem, wait_ms);
}
