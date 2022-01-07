
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int esp_pthread_t ;


 int assert (int ) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int * pthread_find (int ) ;
 int s_threads_mux ;
 int xSemaphoreGive (int ) ;
 scalar_t__ xSemaphoreTake (int ,int ) ;
 int xTaskGetCurrentTaskHandle () ;

pthread_t pthread_self(void)
{
    if (xSemaphoreTake(s_threads_mux, portMAX_DELAY) != pdTRUE) {
        assert(0 && "Failed to lock threads list!");
    }
    esp_pthread_t *pthread = pthread_find(xTaskGetCurrentTaskHandle());
    if (!pthread) {
        assert(0 && "Failed to find current thread ID!");
    }
    xSemaphoreGive(s_threads_mux);
    return (pthread_t)pthread;
}
