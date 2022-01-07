
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dequeue_ready; } ;
typedef TYPE_1__ fixed_queue_t ;


 int assert (int ) ;

void fixed_queue_unregister_dequeue(fixed_queue_t *queue)
{
    assert(queue != ((void*)0));

    queue->dequeue_ready = ((void*)0);
}
