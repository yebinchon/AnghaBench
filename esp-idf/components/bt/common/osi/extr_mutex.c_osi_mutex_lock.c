
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int osi_mutex_t ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 scalar_t__ xSemaphoreTake (int ,int) ;

int osi_mutex_lock(osi_mutex_t *mutex, uint32_t timeout)
{
    int ret = 0;

    if (timeout == OSI_MUTEX_MAX_TIMEOUT) {
        if (xSemaphoreTake(*mutex, portMAX_DELAY) != pdTRUE) {
            ret = -1;
        }
    } else {
        if (xSemaphoreTake(*mutex, timeout / portTICK_PERIOD_MS) != pdTRUE) {
            ret = -2;
        }
    }

    return ret;
}
