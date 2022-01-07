
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osi_mutex_t ;


 int xSemaphoreGive (int ) ;

void osi_mutex_unlock(osi_mutex_t *mutex)
{
    xSemaphoreGive(*mutex);
}
