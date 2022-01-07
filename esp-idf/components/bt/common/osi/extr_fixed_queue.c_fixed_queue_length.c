
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int list; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 size_t list_length (int ) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

size_t fixed_queue_length(fixed_queue_t *queue)
{
    size_t length;

    if (queue == ((void*)0)) {
        return 0;
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    length = list_length(queue->list);
    osi_mutex_unlock(&queue->lock);

    return length;
}
