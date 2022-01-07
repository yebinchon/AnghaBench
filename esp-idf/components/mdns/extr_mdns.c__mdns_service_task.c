
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ mdns_action_t ;
struct TYPE_6__ {scalar_t__ action_queue; } ;


 scalar_t__ ACTION_TASK_STOP ;
 int MDNS_SERVICE_LOCK () ;
 int MDNS_SERVICE_UNLOCK () ;
 int _mdns_execute_action (TYPE_1__*) ;
 TYPE_3__* _mdns_server ;
 int * _mdns_service_task_handle ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_PERIOD_MS ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 scalar_t__ xQueueReceive (scalar_t__,TYPE_1__**,int ) ;

__attribute__((used)) static void _mdns_service_task(void *pvParameters)
{
    mdns_action_t * a = ((void*)0);
    for (;;) {
        if (_mdns_server && _mdns_server->action_queue) {
            if (xQueueReceive(_mdns_server->action_queue, &a, portMAX_DELAY) == pdTRUE) {
                if (a->type == ACTION_TASK_STOP) {
                    break;
                }
                MDNS_SERVICE_LOCK();
                _mdns_execute_action(a);
                MDNS_SERVICE_UNLOCK();
            }
        } else {
            vTaskDelay(500 * portTICK_PERIOD_MS);
        }
    }
    _mdns_service_task_handle = ((void*)0);
    vTaskDelete(((void*)0));
}
