
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int osi_sem_t ;


 int OSI_SEM_MAX_TIMEOUT ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 scalar_t__ xSemaphoreTake (int ,int) ;

int
osi_sem_take(osi_sem_t *sem, uint32_t timeout)
{
    int ret = 0;

    if (timeout == OSI_SEM_MAX_TIMEOUT) {
        if (xSemaphoreTake(*sem, portMAX_DELAY) != pdTRUE) {
            ret = -1;
        }
    } else {
        if (xSemaphoreTake(*sem, timeout / portTICK_PERIOD_MS) != pdTRUE) {
            ret = -2;
        }
    }

    return ret;
}
