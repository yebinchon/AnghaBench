
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* context; int * func; } ;
typedef TYPE_1__ work_item_t ;
typedef int uint32_t ;
struct TYPE_7__ {int work_queue_num; int work_sem; int * work_queues; } ;
typedef TYPE_2__ osi_thread_t ;
typedef int * osi_thread_func_t ;


 int assert (int ) ;
 int fixed_queue_enqueue (int ,TYPE_1__*,int ) ;
 int osi_free (TYPE_1__*) ;
 scalar_t__ osi_malloc (int) ;
 int osi_sem_give (int *) ;

bool osi_thread_post(osi_thread_t *thread, osi_thread_func_t func, void *context, int queue_idx, uint32_t timeout)
{
    assert(thread != ((void*)0));
    assert(func != ((void*)0));

    if (queue_idx >= thread->work_queue_num) {
        return 0;
    }

    work_item_t *item = (work_item_t *)osi_malloc(sizeof(work_item_t));
    if (item == ((void*)0)) {
        return 0;
    }
    item->func = func;
    item->context = context;

    if (fixed_queue_enqueue(thread->work_queues[queue_idx], item, timeout) == 0) {
        osi_free(item);
        return 0;
    }

    osi_sem_give(&thread->work_sem);

    return 1;
}
