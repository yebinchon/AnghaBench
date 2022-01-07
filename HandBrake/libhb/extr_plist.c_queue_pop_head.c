
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; } ;
typedef TYPE_1__ queue_t ;
struct TYPE_6__ {struct TYPE_6__* next; void* value; } ;
typedef TYPE_2__ queue_item_t ;


 int free (TYPE_2__*) ;

void * queue_pop_head(queue_t *q)
{
    void *result;
    queue_item_t *i;

    if (q->head == ((void*)0))
        return ((void*)0);

    i = q->head;
    result = i->value;
    q->head = i->next;
    free(i);

    return result;
}
