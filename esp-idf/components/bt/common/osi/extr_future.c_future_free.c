
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ semaphore; } ;
typedef TYPE_1__ future_t ;


 int osi_free (TYPE_1__*) ;
 int osi_sem_free (scalar_t__*) ;

void future_free(future_t *future)
{
    if (!future) {
        return;
    }

    if (future->semaphore) {
        osi_sem_free(&future->semaphore);
    }

    osi_free(future);
}
