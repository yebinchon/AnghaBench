
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int TaskHandle_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 int MDNS_SERVICE_LOCK () ;
 int MDNS_SERVICE_STACK_DEPTH ;
 int MDNS_SERVICE_UNLOCK () ;
 int MDNS_TASK_AFFINITY ;
 int MDNS_TASK_PRIORITY ;
 int * _mdns_service_semaphore ;
 int _mdns_service_task ;
 int _mdns_service_task_handle ;
 scalar_t__ _mdns_start_timer () ;
 int _mdns_stop_timer () ;
 int vSemaphoreDelete (int *) ;
 int * xSemaphoreCreateMutex () ;
 int xTaskCreatePinnedToCore (int ,char*,int ,int *,int ,int * const,int ) ;

__attribute__((used)) static esp_err_t _mdns_service_task_start(void)
{
    if (!_mdns_service_semaphore) {
        _mdns_service_semaphore = xSemaphoreCreateMutex();
        if (!_mdns_service_semaphore) {
            return ESP_FAIL;
        }
    }
    MDNS_SERVICE_LOCK();
    if (_mdns_start_timer()) {
        MDNS_SERVICE_UNLOCK();
        return ESP_FAIL;
    }
    if (!_mdns_service_task_handle) {
        xTaskCreatePinnedToCore(_mdns_service_task, "mdns", MDNS_SERVICE_STACK_DEPTH, ((void*)0), MDNS_TASK_PRIORITY,
                                (TaskHandle_t * const)(&_mdns_service_task_handle), MDNS_TASK_AFFINITY);
        if (!_mdns_service_task_handle) {
            _mdns_stop_timer();
            MDNS_SERVICE_UNLOCK();
            vSemaphoreDelete(_mdns_service_semaphore);
            _mdns_service_semaphore = ((void*)0);
            return ESP_FAIL;
        }
    }
    MDNS_SERVICE_UNLOCK();
    return ESP_OK;
}
