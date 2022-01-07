
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int enqueue_sem; int lock; int list; int dequeue_sem; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int assert (int ) ;
 void* list_front (int ) ;
 int list_remove (int ,void*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_give (int *) ;
 scalar_t__ osi_sem_take (int ,int ) ;

void *fixed_queue_dequeue(fixed_queue_t *queue, uint32_t timeout)
{
    void *ret = ((void*)0);

    assert(queue != ((void*)0));

    if (osi_sem_take(queue->dequeue_sem, timeout) != 0) {
        return ((void*)0);
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    ret = list_front(queue->list);
    list_remove(queue->list, ret);
    osi_mutex_unlock(&queue->lock);

    osi_sem_give(&queue->enqueue_sem);

    return ret;
}
