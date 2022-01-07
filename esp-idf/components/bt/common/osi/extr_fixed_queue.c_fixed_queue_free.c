
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int list_node_t ;
struct TYPE_5__ {int lock; int dequeue_sem; int enqueue_sem; int list; } ;
typedef TYPE_1__ fixed_queue_t ;
typedef int (* fixed_queue_free_cb ) (int ) ;


 int fixed_queue_unregister_dequeue (TYPE_1__*) ;
 int * list_begin (int ) ;
 int const* list_end (int ) ;
 int list_free (int ) ;
 int * list_next (int const*) ;
 int list_node (int const*) ;
 int osi_free (TYPE_1__*) ;
 int osi_mutex_free (int *) ;
 int osi_sem_free (int *) ;

void fixed_queue_free(fixed_queue_t *queue, fixed_queue_free_cb free_cb)
{
    const list_node_t *node;

    if (queue == ((void*)0)) {
     return;
 }

    fixed_queue_unregister_dequeue(queue);

    if (free_cb) {
        for (node = list_begin(queue->list); node != list_end(queue->list); node = list_next(node)) {
            free_cb(list_node(node));
        }
    }

    list_free(queue->list);
    osi_sem_free(&queue->enqueue_sem);
    osi_sem_free(&queue->dequeue_sem);
    osi_mutex_free(&queue->lock);
    osi_free(queue);
}
