
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* result; scalar_t__ semaphore; } ;
typedef TYPE_1__ future_t ;


 int OSI_SEM_MAX_TIMEOUT ;
 int assert (int ) ;
 int future_free (TYPE_1__*) ;
 int osi_sem_take (scalar_t__*,int ) ;

void *future_await(future_t *future)
{
    assert(future != ((void*)0));


    if (future->semaphore) {
        osi_sem_take(&future->semaphore, OSI_SEM_MAX_TIMEOUT);
    }

    void *result = future->result;
    future_free(future);
    return result;
}
