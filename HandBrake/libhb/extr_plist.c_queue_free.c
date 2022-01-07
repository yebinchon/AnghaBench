
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* head; } ;
typedef TYPE_1__ queue_t ;
typedef TYPE_1__ queue_item_t ;


 int free (TYPE_1__*) ;

void queue_free(queue_t **_q)
{
    queue_t *q = *_q;
    if (q == ((void*)0))
        return;

    queue_item_t *n, *i = q->head;
    while (i != ((void*)0))
    {
        n = i->next;
        free(i);
        i = n;
    }
    free(q);
    *_q = ((void*)0);
}
