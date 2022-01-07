
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enqueue_sem; int lock; int list; int dequeue_sem; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int assert (int) ;
 scalar_t__ list_contains (int ,void*) ;
 int list_remove (int ,void*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_give (int ) ;
 scalar_t__ osi_sem_take (int ,int ) ;

void *fixed_queue_try_remove_from_queue(fixed_queue_t *queue, void *data)
{
    bool removed = 0;

    if (queue == ((void*)0)) {
        return ((void*)0);
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    if (list_contains(queue->list, data) &&
            osi_sem_take(queue->dequeue_sem, 0) == 0) {
        removed = list_remove(queue->list, data);
        assert(removed);
    }
    osi_mutex_unlock(&queue->lock);

    if (removed) {
        osi_sem_give(queue->enqueue_sem);
        return data;
    }

    return ((void*)0);
}
