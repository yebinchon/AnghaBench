
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* dequeue_ready ) (TYPE_1__*) ;} ;
typedef TYPE_1__ fixed_queue_t ;


 int assert (int ) ;
 int stub1 (TYPE_1__*) ;

void fixed_queue_process(fixed_queue_t *queue)
{
    assert(queue != ((void*)0));

    if (queue->dequeue_ready) {
        queue->dequeue_ready(queue);
    }
}
