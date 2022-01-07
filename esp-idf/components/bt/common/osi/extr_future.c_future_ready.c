
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ready_can_be_called; int semaphore; void* result; } ;
typedef TYPE_1__ future_t ;


 int assert (int) ;
 int osi_sem_give (int *) ;

void future_ready(future_t *future, void *value)
{
    assert(future != ((void*)0));
    assert(future->ready_can_be_called);

    future->ready_can_be_called = 0;
    future->result = value;
    osi_sem_give(&future->semaphore);
}
