
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int portTickType ;
struct TYPE_5__ {int type; } ;
typedef TYPE_1__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_6__ {int action_queue; int services; } ;


 int ACTION_SERVICES_CLEAR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HOOK_MALLOC_FAILED ;
 TYPE_4__* _mdns_server ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pdPASS ;
 scalar_t__ xQueueSend (int ,TYPE_1__**,int ) ;

esp_err_t mdns_service_remove_all(void)
{
    if (!_mdns_server) {
        return ESP_ERR_INVALID_ARG;
    }
    if (!_mdns_server->services) {
        return ESP_OK;
    }

    mdns_action_t * action = (mdns_action_t *)malloc(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }
    action->type = ACTION_SERVICES_CLEAR;
    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        free(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
