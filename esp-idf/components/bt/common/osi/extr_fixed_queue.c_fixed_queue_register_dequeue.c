
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dequeue_ready; } ;
typedef TYPE_1__ fixed_queue_t ;
typedef int * fixed_queue_cb ;


 int assert (int ) ;

void fixed_queue_register_dequeue(fixed_queue_t *queue, fixed_queue_cb ready_cb)
{
    assert(queue != ((void*)0));
    assert(ready_cb != ((void*)0));

    queue->dequeue_ready = ready_cb;
}
