
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * osi_mutex_t ;


 int vSemaphoreDelete (int *) ;

void osi_mutex_free(osi_mutex_t *mutex)
{
    vSemaphoreDelete(*mutex);
    *mutex = ((void*)0);
}
