
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t capacity; int dequeue_sem; int enqueue_sem; int list; int lock; } ;
typedef TYPE_1__ fixed_queue_t ;


 int fixed_queue_free (TYPE_1__*,int *) ;
 int list_new (int *) ;
 TYPE_1__* osi_calloc (int) ;
 int osi_mutex_new (int *) ;
 int osi_sem_new (int *,size_t,size_t) ;

fixed_queue_t *fixed_queue_new(size_t capacity)
{
    fixed_queue_t *ret = osi_calloc(sizeof(fixed_queue_t));
    if (!ret) {
        goto error;
    }

    osi_mutex_new(&ret->lock);
    ret->capacity = capacity;

    ret->list = list_new(((void*)0));
    if (!ret->list) {
        goto error;
    }


    osi_sem_new(&ret->enqueue_sem, capacity, capacity);
    if (!ret->enqueue_sem) {
        goto error;
    }

    osi_sem_new(&ret->dequeue_sem, capacity, 0);
    if (!ret->dequeue_sem) {
        goto error;
    }

    return ret;

error:;
    fixed_queue_free(ret, ((void*)0));
    return ((void*)0);
}
