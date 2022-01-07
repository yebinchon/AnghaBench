
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int portTickType ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int action_queue; } ;


 int ACTION_TASK_STOP ;
 int ESP_OK ;
 TYPE_3__* _mdns_server ;
 int * _mdns_service_semaphore ;
 int * _mdns_service_task_handle ;
 int _mdns_stop_timer () ;
 scalar_t__ pdPASS ;
 int portTICK_PERIOD_MS ;
 int vSemaphoreDelete (int *) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueSend (int ,TYPE_1__**,int ) ;

__attribute__((used)) static esp_err_t _mdns_service_task_stop(void)
{
    _mdns_stop_timer();
    if (_mdns_service_task_handle) {
        mdns_action_t action;
        mdns_action_t * a = &action;
        action.type = ACTION_TASK_STOP;
        if (xQueueSend(_mdns_server->action_queue, &a, (portTickType)0) != pdPASS) {
            vTaskDelete(_mdns_service_task_handle);
            _mdns_service_task_handle = ((void*)0);
        }
        while (_mdns_service_task_handle) {
            vTaskDelay(10 / portTICK_PERIOD_MS);
        }
    }
    vSemaphoreDelete(_mdns_service_semaphore);
    _mdns_service_semaphore = ((void*)0);
    return ESP_OK;
}
