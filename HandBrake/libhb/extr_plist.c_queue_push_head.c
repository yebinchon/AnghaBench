
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


 TYPE_2__* calloc (int,int) ;

void queue_push_head(queue_t *q, void *v)
{
    queue_item_t *i = calloc(1, sizeof(queue_item_t));
    i->value = v;
    i->next = q->head;
    q->head = i;
}
