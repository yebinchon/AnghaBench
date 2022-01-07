
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ Job ;


 int job_list_is_empty (TYPE_1__*) ;

void
job_list_insert(Job *head, Job *j)
{
    if (!job_list_is_empty(j)) return;

    j->prev = head->prev;
    j->next = head;
    head->prev->next = j;
    head->prev = j;
}
