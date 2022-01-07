
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* head; } ;
typedef TYPE_2__ queue_t ;
struct TYPE_4__ {void* value; } ;



void * queue_peek_head(queue_t *q)
{
    if (q->head != ((void*)0))
        return q->head->value;
    return ((void*)0);
}
