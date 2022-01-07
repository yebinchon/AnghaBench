
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dequeue_sem; int lock; int list; int enqueue_sem; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int assert (int ) ;
 int list_append (int ,void*) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;
 int osi_sem_give (int *) ;
 scalar_t__ osi_sem_take (int *,int ) ;

bool fixed_queue_enqueue(fixed_queue_t *queue, void *data, uint32_t timeout)
{
    bool status=0;

    assert(queue != ((void*)0));
    assert(data != ((void*)0));

    if (osi_sem_take(&queue->enqueue_sem, timeout) != 0) {
        return 0;
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    status = list_append(queue->list, data);
    osi_mutex_unlock(&queue->lock);

    if(status == 1 )
        osi_sem_give(&queue->dequeue_sem);

    return status;
}
