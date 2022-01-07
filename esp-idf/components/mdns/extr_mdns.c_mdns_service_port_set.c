
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int portTickType ;
typedef int mdns_srv_item_t ;
struct TYPE_7__ {scalar_t__ port; int * service; } ;
struct TYPE_8__ {TYPE_1__ srv_port; } ;
struct TYPE_9__ {TYPE_2__ data; int type; } ;
typedef TYPE_3__ mdns_action_t ;
typedef int esp_err_t ;
struct TYPE_10__ {int action_queue; int services; } ;


 int ACTION_SERVICE_PORT_SET ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int HOOK_MALLOC_FAILED ;
 int * _mdns_get_service_item (char const*,char const*) ;
 TYPE_6__* _mdns_server ;
 scalar_t__ _str_null_or_empty (char const*) ;
 int free (TYPE_3__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ pdPASS ;
 scalar_t__ xQueueSend (int ,TYPE_3__**,int ) ;

esp_err_t mdns_service_port_set(const char * service, const char * proto, uint16_t port)
{
    if (!_mdns_server || !_mdns_server->services || _str_null_or_empty(service) || _str_null_or_empty(proto) || !port) {
        return ESP_ERR_INVALID_ARG;
    }
    mdns_srv_item_t * s = _mdns_get_service_item(service, proto);
    if (!s) {
        return ESP_ERR_NOT_FOUND;
    }

    mdns_action_t * action = (mdns_action_t *)malloc(sizeof(mdns_action_t));
    if (!action) {
        HOOK_MALLOC_FAILED;
        return ESP_ERR_NO_MEM;
    }
    action->type = ACTION_SERVICE_PORT_SET;
    action->data.srv_port.service = s;
    action->data.srv_port.port = port;
    if (xQueueSend(_mdns_server->action_queue, &action, (portTickType)0) != pdPASS) {
        free(action);
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}
