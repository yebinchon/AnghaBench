
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int list; } ;
typedef TYPE_1__ fixed_queue_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int list_is_empty (int ) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

bool fixed_queue_is_empty(fixed_queue_t *queue)
{
    bool is_empty = 0;

    if (queue == ((void*)0)) {
        return 1;
    }

    osi_mutex_lock(&queue->lock, OSI_MUTEX_MAX_TIMEOUT);
    is_empty = list_is_empty(queue->list);
    osi_mutex_unlock(&queue->lock);

    return is_empty;
}
