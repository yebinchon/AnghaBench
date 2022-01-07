
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef TYPE_1__ Job ;



void
job_list_reset(Job *head)
{
    head->prev = head;
    head->next = head;
}
