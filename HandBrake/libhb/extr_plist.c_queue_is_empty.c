
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; } ;
typedef TYPE_1__ queue_t ;



int queue_is_empty(queue_t *q)
{
    return q->head == ((void*)0);
}
