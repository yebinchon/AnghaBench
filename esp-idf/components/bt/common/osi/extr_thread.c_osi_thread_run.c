
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int context; int (* func ) (int ) ;} ;
typedef TYPE_1__ work_item_t ;
struct osi_thread_start_arg {int start_sem; TYPE_2__* thread; } ;
struct TYPE_6__ {int work_queue_num; int stop_sem; int * thread_handle; int * work_queues; scalar_t__ stop; int work_sem; } ;
typedef TYPE_2__ osi_thread_t ;


 int OSI_SEM_MAX_TIMEOUT ;
 TYPE_1__* fixed_queue_dequeue (int ,int ) ;
 int osi_free (TYPE_1__*) ;
 int osi_sem_give (int *) ;
 int osi_sem_take (int *,int ) ;
 int stub1 (int ) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void osi_thread_run(void *arg)
{
    struct osi_thread_start_arg *start = (struct osi_thread_start_arg *)arg;
    osi_thread_t *thread = start->thread;

    osi_sem_give(&start->start_sem);

    while (1) {
        int idx = 0;

        osi_sem_take(&thread->work_sem, OSI_SEM_MAX_TIMEOUT);

        if (thread->stop) {
            break;
        }

        while (!thread->stop && idx < thread->work_queue_num) {
            work_item_t *item = fixed_queue_dequeue(thread->work_queues[idx], 0);
            if (item) {
                item->func(item->context);
                osi_free(item);
                idx = 0;
                continue;
            } else {
                idx++;
            }
        }
    }

    thread->thread_handle = ((void*)0);
    osi_sem_give(&thread->stop_sem);

    vTaskDelete(((void*)0));
}
