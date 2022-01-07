
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * osi_sem_t ;


 int vSemaphoreDelete (int *) ;

void osi_sem_free(osi_sem_t *sem)
{
    vSemaphoreDelete(*sem);
    *sem = ((void*)0);
}
