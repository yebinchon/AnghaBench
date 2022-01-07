
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int list; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int * list_front (int ) ;
 scalar_t__ list_is_empty (int ) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

void *fixed_queue_try_peek_first(fixed_queue_t *queue)
{
    void *ret = ((void*)0);

    if (queue == ((void*)0)) {
        return ((void*)0);
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    ret = list_is_empty(queue->list) ? ((void*)0) : list_front(queue->list);
    osi_mutex_unlock(&queue->lock);

    return ret;
}
