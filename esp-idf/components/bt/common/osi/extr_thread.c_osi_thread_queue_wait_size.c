
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work_queue_num; int * work_queues; } ;
typedef TYPE_1__ osi_thread_t ;


 int fixed_queue_length (int ) ;

int osi_thread_queue_wait_size(osi_thread_t *thread, int wq_idx)
{
    if (wq_idx < 0 || wq_idx >= thread->work_queue_num) {
        return -1;
    }

    return fixed_queue_length(thread->work_queues[wq_idx]);
}
