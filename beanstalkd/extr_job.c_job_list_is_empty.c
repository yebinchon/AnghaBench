
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* prev; struct TYPE_3__* next; } ;
typedef TYPE_1__ Job ;



int
job_list_is_empty(Job *head)
{
    return head->next == head && head->prev == head;
}
